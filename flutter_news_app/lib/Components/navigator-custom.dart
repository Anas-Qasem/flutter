import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigatorCustom extends StatelessWidget {
  final int indexPage;
  final Function(int) onPress;
  NavigatorCustom({required this.indexPage, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: 0,
      color: Colors.indigo,
      items: [
        Icon(
          Icons.article,
          color: indexPage == 0 ? Colors.white : Colors.grey,
        ),
        Icon(
          Icons.ondemand_video_outlined,
          color: indexPage == 1 ? Colors.white : Colors.grey,
        ),
      ],
      // onTap :(value){
      // onPress(value);
      // }
      onTap: onPress,
    );
  }
}
