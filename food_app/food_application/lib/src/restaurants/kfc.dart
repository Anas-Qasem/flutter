import 'package:flutter/material.dart';

class KFC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('images/Kfcc.jpg'),
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'KFC',
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
                        Text('4.5'),
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
                  'Supreme Bundles',
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
                          'Supreme Sandwich',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.25'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/Supreme.jpg'),
                      height: 90,
                      width: 90,
                    )
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
                          'Medium Supreme Meal',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 5.0'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/Suprememeal.png'),
                      height: 90,
                      width: 90,
                    )
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
                          'Medium Supreme Box',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 5.45'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/Supremebox.jpg'),
                      height: 90,
                      width: 90,
                    )
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
                  'Sandwiches',
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
                          'Royal Sandwich',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 1.15'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/royal_big.jpg'),
                      height: 90,
                      width: 90,
                    )
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
                          'Twister Sandwich',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 1.75'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/twister.jpg'),
                      height: 90,
                      width: 90,
                    )
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
                          'Fairy Twister Sandwich',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.65'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/twister.jpg'),
                      height: 90,
                      width: 90,
                    )
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
                          'Big Filler Classic Sandwich',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.75'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/big filler_combo.jpg'),
                      height: 90,
                      width: 90,
                    )
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
