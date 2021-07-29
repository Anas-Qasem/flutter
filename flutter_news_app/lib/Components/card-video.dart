import 'package:flutter/material.dart';
import 'package:flutter_news_app/Components/web-view.dart';
import 'package:google_fonts/google_fonts.dart';

class CardVideo extends StatelessWidget {
  final String title;
  final String urlImage;
  final String urlVideo;
  CardVideo({
    Key? key,
    required this.title,
    required this.urlImage,
    required this.urlVideo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        var route = MaterialPageRoute(
            builder: (context) => AppWebView(title: title, url: urlVideo));
        Navigator.push(context, route);
      },
      child: Container(
        height: 250,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 10,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Image.network(
                  urlImage,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  title,
                  style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
