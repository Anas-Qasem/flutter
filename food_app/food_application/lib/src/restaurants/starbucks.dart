import 'package:flutter/material.dart';

class Starbucks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('images/starbucks.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Starbucks',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('5'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      ' | ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('\$\$\$'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Price',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      ' | ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('2 JD'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Delivery',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      ' | ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('No'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Min Order',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Mocha',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'White Chocolate Mocha',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.71'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iced White Chocolate Mocha',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.71'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iced Cafe Mocha',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.71'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 30,
                color: Colors.grey,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Cool For The Summer',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iced Shaken Black Tea',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.72'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mixed Berry Blended Juice',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.72'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vanilla Crunch Cake',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.72'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 30,
                color: Colors.grey,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Chocolate',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Starbucks Signature Hot Chocolate',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.63'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iced Starbucks Signature Chocolate',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.63'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
