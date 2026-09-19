// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "impeller/typographer/text_frame.h"
#include "flutter/display_list/geometry/dl_path.h"  // nogncheck
#include "fml/status.h"
#include "impeller/geometry/scalar.h"
#include "impeller/typographer/font.h"
#include "impeller/typographer/font_glyph_pair.h"

namespace impeller {

// If the text point size * max basis XY is larger than this value, render the
// text as paths (if available) for faster and higher fidelity rendering. This
// is a somewhat arbitrary cutoff.
//
// Moved here from canvas.cc so `Canvas::DrawTextFrame` and
// `FirstPassDispatcher::drawText` (impeller/display_list/dl_dispatcher.cc)
// can share one answer via `TextFrame::ChooseDrawMode` instead of computing it
// twice and risking disagreement. NOT the same knob as `kMaximumTextScale`
// below (48): that one clamps the font size used to rasterize into the glyph
// atlas, this one decides whether the atlas is used at all.
static constexpr Scalar kMaxTextScale = 250;

TextFrame::TextFrame() = default;

TextFrame::TextFrame(std::vector<TextRun>& runs,
                     Rect bounds,
                     bool has_color,
                     const PathCreator& path_creator,
                     const ColorPathCreator& color_path_creator)
    : runs_(std::move(runs)),
      bounds_(bounds),
      has_color_(has_color),
      path_creator_(path_creator),
      color_path_creator_(color_path_creator) {}

TextFrame::~TextFrame() = default;

Rect TextFrame::GetBounds() const {
  return bounds_;
}

size_t TextFrame::GetRunCount() const {
  return runs_.size();
}

const std::vector<TextRun>& TextFrame::GetRuns() const {
  return runs_;
}

GlyphAtlas::Type TextFrame::GetAtlasType() const {
  return has_color_ ? GlyphAtlas::Type::kColorBitmap
                    : GlyphAtlas::Type::kAlphaBitmap;
}

bool TextFrame::HasColor() const {
  return has_color_;
}

namespace {
constexpr uint32_t kDenominator = 200;
constexpr int32_t kMaximumTextScale = 48;
constexpr Rational kZero(0, kDenominator);
}  // namespace

// static
Rational TextFrame::RoundScaledFontSize(Scalar scale) {
  if (scale > kMaximumTextScale) {
    return Rational(kMaximumTextScale * kDenominator, kDenominator);
  }
  // An arbitrarily chosen maximum text scale to ensure that regardless of the
  // CTM, a glyph will fit in the atlas. If we clamp significantly, this may
  // reduce fidelity but is preferable to the alternative of failing to render.
  Rational result = Rational(std::round(scale * kDenominator), kDenominator);
  return result < kZero ? kZero : result;
}

Rational TextFrame::RoundScaledFontSize(Rational scale) {
  Rational result = Rational(
      std::round((scale.GetNumerator() * static_cast<Scalar>(kDenominator))) /
          scale.GetDenominator(),
      kDenominator);
  return std::clamp(result, Rational(0, kDenominator),
                    Rational(kMaximumTextScale * kDenominator, kDenominator));
}

static constexpr SubpixelPosition ComputeFractionalPosition(Scalar value) {
  value += 0.125;
  value = (value - floorf(value));
  if (value < 0.25) {
    return SubpixelPosition::kSubpixel00;
  }
  if (value < 0.5) {
    return SubpixelPosition::kSubpixel10;
  }
  if (value < 0.75) {
    return SubpixelPosition::kSubpixel20;
  }
  return SubpixelPosition::kSubpixel30;
}

// Compute subpixel position for glyphs based on X position and provided
// max basis length (scale).
// This logic is based on the SkPackedGlyphID logic in SkGlyph.h
// static
SubpixelPosition TextFrame::ComputeSubpixelPosition(
    const TextRun::GlyphPosition& glyph_position,
    AxisAlignment alignment,
    const Matrix& transform) {
  Point pos = transform * glyph_position.position;
  switch (alignment) {
    case AxisAlignment::kNone:
      return SubpixelPosition::kSubpixel00;
    case AxisAlignment::kX:
      return ComputeFractionalPosition(pos.x);
    case AxisAlignment::kY:
      return static_cast<SubpixelPosition>(ComputeFractionalPosition(pos.y)
                                           << 2);
    case AxisAlignment::kAll:
      return static_cast<SubpixelPosition>(
          ComputeFractionalPosition(pos.x) |
          (ComputeFractionalPosition(pos.y) << 2));
  }
}

fml::StatusOr<flutter::DlPath> TextFrame::GetPath() const {
  // Cached for the same reason as GetColorPaths: the caller is the rasterizer,
  // which re-runs on every frame that repaints this text, while extraction
  // walks the whole blob and copies every glyph outline.
  std::call_once(path_once_, [this]() {
    path_ =
        path_creator_
            ? path_creator_()
            : fml::StatusOr<flutter::DlPath>(fml::Status(
                  fml::StatusCode::kCancelled, "no path creator specified."));
  });
  return path_.value();
}

const std::vector<ColorGlyphLayer>& TextFrame::GetColorPaths() const {
  std::call_once(color_paths_once_, [this]() {
    if (color_path_creator_) {
      color_paths_ = color_path_creator_();
    }
  });
  return color_paths_;
}

const Font& TextFrame::GetFont() const {
  return runs_[0].GetFont();
}

TextFrame::DrawMode TextFrame::ChooseDrawMode(bool imposes_color,
                                              Scalar max_basis_scale) const {
  // Branch order and short-circuiting must match Canvas::DrawTextFrame
  // exactly (impeller/display_list/canvas.cc) — see the comment there for why
  // branch 1 is deliberately not nested inside HasColor().
  if (imposes_color) {
    if (GetPath().ok()) {
      return DrawMode::kMonoPath;
    }
    // No outline available (a bitmap-only color font, e.g. CBDT/sbix emoji):
    // fall through, same as the canvas does.
  }
  if (HasColor()) {
    if (!GetColorPaths().empty()) {
      return DrawMode::kColorPaths;
    }
  }
  // A frame with no runs has no font to read a point size from. Nothing
  // upstream constructs one for real text, but guard it rather than index
  // runs_[0] out of range via GetFont(): fall straight to the atlas branch,
  // which does nothing for an empty frame.
  if (!runs_.empty() &&
      max_basis_scale * GetFont().GetMetrics().point_size > kMaxTextScale) {
    if (GetPath().ok()) {
      return DrawMode::kOversizePath;
    }
  }
  return DrawMode::kAtlas;
}

std::optional<Glyph> TextFrame::AsSingleGlyph() const {
  if (runs_.size() == 1 && runs_[0].GetGlyphCount() == 1) {
    return runs_[0].GetGlyphPositions()[0].glyph;
  }
  return std::nullopt;
}

}  // namespace impeller
