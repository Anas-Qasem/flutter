import 'package:flutter/material.dart';
//import 'package:food_application/src/page/sign_in_page.dart';
//import 'package:food_application/src/page/sign_page.dart';
// import 'package:food_application/src/page/sign_in_page.dart';
// import 'package:food_application/src/scoped_model/food_model.dart';
import 'package:food_application/src/scoped_model/main_model.dart';
import 'package:food_application/src/screens/home_screen.dart';
import 'package:food_application/src/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class MyApp extends StatelessWidget {
  final MainModel mainModel = MainModel();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
        model: mainModel,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Delivary',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: MainScreen(model: mainModel),
          routes: {
            '/': (BuildContext context) => HomeScreen(),
            '/mainScreen': (BuildContext) => MainScreen(
                  model: mainModel,
                ),
          },
        ));
  }
}
