import 'package:flutter/material.dart';
import 'package:flutter_news_app/Components/card-news.dart';
import 'package:flutter_news_app/Controller/c-news.dart';
import 'package:flutter_news_app/Model/m-news.dart';

class ScreenNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List _data = ControllerNews.dataNews;
    return Scaffold(
      body: ListView.builder(
        itemCount: ControllerNews.dataLength,
        itemBuilder: (context, index) {
          ModelNews snapshot = _data[index];
          return CardNews(
            title: snapshot.title,
            image: snapshot.imageUrl,
            urlPage: snapshot.urlPage,
          );
        },
      ),
    );
  }
}
