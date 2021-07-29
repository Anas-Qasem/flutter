import 'package:flutter/material.dart';
import 'package:flutter_news_app/Components/card-video.dart';
import 'package:flutter_news_app/Controller/c-video.dart';
import 'package:flutter_news_app/Model/m-video.dart';

class ScreenVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List _data = ControllerVideo.dataVideo;
    return Scaffold(
      body: ListView.builder(
        itemCount: ControllerVideo.dataLength,
        itemBuilder: (context, index) {
          ModelVideo snapshot = _data[index];
          return CardVideo(
            title: snapshot.title,
            urlImage: snapshot.urlImage,
            urlVideo: snapshot.urlVideo,
          );
        },
      ),
    );
  }
}
