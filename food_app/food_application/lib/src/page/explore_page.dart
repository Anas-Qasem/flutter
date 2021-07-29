import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_application/src/restaurants/breakfast.dart';
import 'package:food_application/src/restaurants/burger.dart';
import 'package:food_application/src/restaurants/coffee.dart';
import 'package:food_application/src/restaurants/desserts.dart';
import 'package:food_application/src/restaurants/icecream.dart';
import 'package:food_application/src/restaurants/pizza.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What is your favorite type of food?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Burgers()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/burger.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Burgers',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Pizza()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/pizza.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Pizza',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => BreakFast()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/breakfastt.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'BreakFast',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Desserts()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/dessert-icon.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Desserts',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => IceCream()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/icecreem-icon.jpg'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Ice Cream',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Coffee()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/coffee-cup.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Coffee',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
