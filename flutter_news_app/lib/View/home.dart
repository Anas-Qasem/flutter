import 'package:flutter/material.dart';
import 'package:flutter_news_app/Components/app-bar-custom.dart';
import 'package:flutter_news_app/Components/navigator-custom.dart';
import 'package:flutter_news_app/View/video.dart';

import 'news.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _indexPage = 0;
  List<Widget> _pages = [
    ScreenNew(), //0
    ScreenVideo(), //1
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(),
      body: _pages[_indexPage],
      bottomNavigationBar: NavigatorCustom(
        indexPage: _indexPage,
        onPress: (value) {
          setState(() {
            _indexPage = value;
          });
        },
      ),
    );
  }
}
