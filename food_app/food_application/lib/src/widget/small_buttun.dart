import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String text;

  const SmallButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 40.0,
      width: 60.0,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.blue, fontSize: 16.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: Colors.blue, width: 2.0, style: BorderStyle.solid),
      ),
    );
  }
}
