import 'package:flutter/material.dart';
import 'package:food_application/src/page/sign_page.dart';
import 'package:food_application/src/page/sign_up_page.dart';
import 'package:food_application/src/widget/button.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image(
                image: AssetImage('images/food.gif'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              child: Button(bText: 'Sign In'),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Button(bText: 'Sign Up'),
            ),
          ],
        ),
      ),
    ));
  }
}
