import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBarCustom({String title = 'BBC'}) {
  return AppBar(
    backgroundColor: Colors.red,
    title: Text(
      title,
      style: GoogleFonts.pacifico(),
    ),
    centerTitle: true,
  );
}
