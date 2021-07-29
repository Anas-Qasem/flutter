import 'package:flutter/material.dart';
import 'package:food_application/src/screens/main_screen.dart';
import 'package:food_application/src/widget/button.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image(
                image: AssetImage('images/success.gif'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Payment was done successfully',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MainScreen()));
              },
              child: Button(bText: 'Ok'),
            ),
          ],
        ),
      ),
    );
  }
}
