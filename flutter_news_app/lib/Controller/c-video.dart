import 'package:flutter_news_app/Model/m-video.dart';

class ControllerVideo {
  static List<ModelVideo> _dataVideo = [
    ModelVideo(
      title: 'Lost Treasures of Egypt',
      urlImage: 'https://assets-natgeotv.fnghub.com/Videos/57430.ThumbL.jpg',
      urlVideo: 'https://www.youtube.com/watch?v=-obKX-mqjXQ',
    ),
    ModelVideo(
      title: 'Jordan: a travel documentary',
      urlImage: 'https://i.ytimg.com/vi/3uFqt7XonZU/maxresdefault.jpg',
      urlVideo: 'https://www.youtube.com/watch?v=3uFqt7XonZU',
    ),
    ModelVideo(
      title: 'ancient mesopotamia',
      urlImage:
          'https://www.history.com/.image/t_share/MTY3Mjg3NTUxNTkyMjQ1MDU3/mesopotamia-gettyimages-152200992.jpg',
      urlVideo: 'https://www.youtube.com/watch?v=xVf5kZA0HtQ',
    ),
    ModelVideo(
      title: 'Savage Kingdom',
      urlImage:
          'https://images-na.ssl-images-amazon.com/images/I/91nw9NVZ4IL._RI_.jpg',
      urlVideo: 'https://www.youtube.com/watch?v=3rHxgKI97s4',
    ),
    ModelVideo(
      title: 'New Zealand\'s Stunning Landscapes',
      urlImage: 'https://i.ytimg.com/vi/1Evj5XMTWEo/maxresdefault.jpg',
      urlVideo: 'https://www.youtube.com/watch?v=1Evj5XMTWEo',
    ),
  ];

  static List<ModelVideo> get dataVideo => _dataVideo;

  static int get dataLength => _dataVideo.length;
}
