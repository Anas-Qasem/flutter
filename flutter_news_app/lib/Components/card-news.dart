import 'package:flutter/material.dart';
import 'package:flutter_news_app/Components/web-view.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    required this.title,
    required this.image,
    required this.urlPage,
  });
  final title;
  final image;
  final urlPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AppWebView(title: title, url: urlPage),
          ),
        );
      },
      child: Container(
        height: 100,
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            children: [
              Expanded(
                  child: Image.network(
                image,
                fit: BoxFit.fill,
                height: 100,
              )),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
