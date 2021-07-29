import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String bText;

  const Button({@required this.bText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(25.0)),
      child: Center(
        child: Text(
          bText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
