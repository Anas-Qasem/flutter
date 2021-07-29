import 'package:flutter/material.dart';
import 'package:food_application/src/restaurants/costa.dart';
import 'package:food_application/src/restaurants/starbucks.dart';

class Coffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => Starbucks()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 340,
                          child: Image(
                            image: AssetImage('images/starbucks.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: Container(
                            height: 80,
                            width: 340,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.white, Colors.white54],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 30,
                          right: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: AssetImage('images/Starbucks_icon.png'),
                                height: 40,
                                width: 50,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Starbucks',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '(300 Reviews)',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '3.0',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Min Order',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext) => Costa()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 340,
                          child: Image(
                            image: AssetImage('images/costa.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: Container(
                            height: 80,
                            width: 340,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.white, Colors.white54],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 30,
                          right: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: AssetImage('images/Costa-icon.png'),
                                height: 40,
                                width: 50,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Costa Coffee',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Theme.of(context).primaryColor,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '(150 Reviews)',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '1.5',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Min Order',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
