// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef FLUTTER_IMPELLER_TESSELLATOR_PATH_VERTEX_CACHE_H_
#define FLUTTER_IMPELLER_TESSELLATOR_PATH_VERTEX_CACHE_H_

#include <cstdint>
#include <functional>
#include <list>
#include <unordered_map>
#include <vector>

#include "flutter/fml/trace_event.h"
#include "impeller/geometry/point.h"
#include "impeller/geometry/scalar.h"

namespace impeller {

// QURAN PATCH 009. Headroom multiplier applied when an existing entry is too
// coarse for a finer request: re-flatten at `scale * kScaleHeadroom` instead
// of exactly `scale`, so a handful of subsequent, slightly finer requests
// (as a continuous pinch produces, one every frame) keep hitting instead of
// re-flattening on every single frame.
inline constexpr Scalar kScaleHeadroom = 2.0f;

// Roughly two pages of Quran glyph outlines. Bounded because an app that
// draws a fresh path every frame (an animated shape) would otherwise grow
// this without limit. Same budget as the cache this replaces (QURAN PATCH
// 003's trim kept it here too).
inline constexpr size_t kMaxCachedVertexBytes = 24u * 1024u * 1024u;

//------------------------------------------------------------------------------
/// @brief      A cache of flattened path vertices, keyed by geometry identity
///             and writer variant, that survives a change in flattening
///             scale instead of missing on every one.
///
///             QURAN PATCH 009. The cache this replaces keyed on
///             `(geometry_id, quantized_tolerance, writer_variant)`, so a
///             continuous pinch-zoom — which changes the flattening scale on
///             nearly every frame — missed nearly every frame too: ~120
///             distinct scale buckets between 1.0x and 3.5x on a 3x-DPR
///             phone. This cache instead keys on `(geometry_id,
///             writer_variant)` alone and remembers the scale each entry was
///             flattened for. A request at or below that scale is a hit
///             (Wang's formula's segment count only grows with scale, so an
///             entry flattened finer than strictly necessary is still a
///             correct — just not maximally cheap — set of vertices). A
///             request finer than the cached entry re-flattens once, with
///             headroom (`kScaleHeadroom`), and replaces the entry in place,
///             so a few more slightly finer requests keep hitting instead of
///             re-flattening again immediately.
///
///             Eviction is an intrusive LRU list (`splice` to front on every
///             touch), not a full sort of every key — the cache this
///             replaces spent 8.5-9.3 ms inside a single frame sorting the
///             whole map by last-used when the 24 MB cap was crossed, twice
///             per pinch.
///
///             Known ceiling: after a zoom, a replaced entry stays flattened
///             at whatever scale the zoom last reached (headroom included,
///             so up to ~2x the peak requested scale) until its geometry id
///             changes (a new path — e.g. relaid-out text) or the cache
///             evicts it. A page that was zoomed to ~10.5x and settles back
///             at 1.0x therefore carries vertex buffers sized for up to
///             ~2x1.0x = up to ~2x the vertices it strictly needs at rest,
///             until something rebuilds its paths. Shipped without a
///             down-refinement bound deliberately — add one (something like
///             `entry.scale > scale * 4` with a float margin, re-flattening
///             at `scale * 2`) only if this shows up as a real pan/rest cost
///             in measurement; it did not in the numbers this patch was
///             verified against.
///
/// @tparam     IndexT  The index type of the tessellated vertex buffer
///                     (`uint16_t` or `uint32_t`), matching
///                     `ConvexTessellatorImpl<IndexT>`.
template <typename IndexT>
class PathVertexCache {
 public:
  //----------------------------------------------------------------------------
  /// @brief      One path's tessellated vertices, valid for any requested
  ///             scale less than or equal to `scale`.
  struct Entry {
    std::vector<Point> points;
    std::vector<IndexT> indices;
    size_t point_count = 0u;  // Valid prefix of `points`.
    size_t index_count = 0u;  // Valid prefix of `indices`; also vertex_count.
    // The scale this entry was flattened for. Set by `Get` after `Flatten`
    // returns — the callback itself does not need to know it, only receive
    // it as `flatten_scale`.
    Scalar scale = 0.0f;
  };

  //----------------------------------------------------------------------------
  /// @brief      Fills `entry`'s `points`/`indices`/`point_count`/
  ///             `index_count` by flattening the caller's geometry at
  ///             `flatten_scale`. Never called with the entry's final
  ///             `scale` already set — `Get` sets it afterward.
  using Flatten = std::function<void(Scalar flatten_scale, Entry& entry)>;

  //----------------------------------------------------------------------------
  /// @brief      Returns the entry for `(geometry_id, writer_variant)` valid
  ///             at `scale`, calling `flatten` to populate or refine it as
  ///             needed.
  ///
  /// @param[in]  geometry_id      Identity of the path geometry; 0 means "do
  ///                              not cache" and must be filtered out by the
  ///                              caller before calling `Get`.
  /// @param[in]  writer_variant   Distinguishes cache entries for the same
  ///                              geometry tessellated by a different vertex
  ///                              writer (e.g. fan vs. strip).
  /// @param[in]  scale            The flattening scale this request needs at
  ///                              minimum.
  /// @param[in]  flatten          Populates a fresh or refined `Entry` at a
  ///                              scale this class chooses (see class
  ///                              comment).
  const Entry& Get(uint32_t geometry_id,
                   uint8_t writer_variant,
                   Scalar scale,
                   const Flatten& flatten) {
    const uint64_t key = MakeKey(geometry_id, writer_variant);
    auto found = index_.find(key);
    if (found == index_.end()) {
      // Cold miss: flatten at exactly `scale`, not `scale * kScaleHeadroom` —
      // a path drawn once at rest (never zoomed) must not carry inflated
      // vertex counts it will never need.
      TRACE_EVENT0("impeller", "TessellateCacheMiss");
      Entry entry;
      flatten(scale, entry);
      entry.scale = scale;
      return Insert(key, std::move(entry));
    }

    typename std::list<Node>::iterator node_it = found->second;
    if (node_it->entry.scale >= scale) {
      Touch(node_it);
      return node_it->entry;
    }

    // Cached, but not fine enough: refine once, with headroom, and replace.
    TRACE_EVENT0("impeller", "TessellateCacheRefine");
    const Scalar flatten_scale = scale * kScaleHeadroom;
    Entry entry;
    flatten(flatten_scale, entry);
    entry.scale = flatten_scale;
    cached_bytes_ -= EntryBytes(node_it->entry);
    node_it->entry = std::move(entry);
    cached_bytes_ += EntryBytes(node_it->entry);
    Touch(node_it);
    MaybeEvict(key);
    return node_it->entry;
  }

  size_t GetCachedBytes() const { return cached_bytes_; }

  size_t GetEntryCount() const { return index_.size(); }

 private:
  struct Node {
    uint64_t key;
    Entry entry;
  };

  static uint64_t MakeKey(uint32_t geometry_id, uint8_t writer_variant) {
    return (static_cast<uint64_t>(geometry_id) << 2) |
           static_cast<uint64_t>(writer_variant & 0b11u);
  }

  static size_t EntryBytes(const Entry& entry) {
    return entry.points.capacity() * sizeof(Point) +
           entry.indices.capacity() * sizeof(IndexT);
  }

  const Entry& Insert(uint64_t key, Entry entry) {
    cached_bytes_ += EntryBytes(entry);
    order_.push_front(Node{key, std::move(entry)});
    index_[key] = order_.begin();
    MaybeEvict(key);
    return order_.front().entry;
  }

  // Moves `it` to the front of `order_` (most-recently-used end).
  // `std::list::splice` never invalidates iterators or references to the
  // spliced element, so every `typename std::list<Node>::iterator` held in
  // `index_` — and every `Node&`/`Entry&` a caller is currently holding —
  // stays valid across this call.
  void Touch(typename std::list<Node>::iterator it) {
    if (it != order_.begin()) {
      order_.splice(order_.begin(), order_, it);
    }
  }

  // Pops from the back (least-recently-used end) until at or under half the
  // budget, the way the cache this replaces did — never popping `keep`
  // (the entry this call just inserted or refined), so a single request
  // cannot evict its own result.
  void MaybeEvict(uint64_t keep) {
    if (cached_bytes_ <= kMaxCachedVertexBytes) {
      return;
    }
    while (cached_bytes_ > kMaxCachedVertexBytes / 2u && !order_.empty()) {
      const Node& back = order_.back();
      if (back.key == keep) {
        // Only reachable with a single live entry (it is simultaneously
        // front and back) whose own bytes exceed the budget by itself:
        // nothing else to evict without breaking the caller's own request.
        break;
      }
      cached_bytes_ -= EntryBytes(back.entry);
      index_.erase(back.key);
      order_.pop_back();
    }
  }

  std::list<Node> order_;  // front = most recently used.
  std::unordered_map<uint64_t, typename std::list<Node>::iterator> index_;
  size_t cached_bytes_ = 0u;
};

}  // namespace impeller

#endif  // FLUTTER_IMPELLER_TESSELLATOR_PATH_VERTEX_CACHE_H_
