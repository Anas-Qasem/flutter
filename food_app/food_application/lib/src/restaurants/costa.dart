import 'package:flutter/material.dart';

class Costa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('images/costa.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Costa',
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
                  'Hot Coffee',
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
                          'Caffe Latte',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.85'),
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
                          'Cappuccino',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.85'),
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
                          'Mocha Corto',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.40'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
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
                          'Black Corto',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.70'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
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
                          'Primo Flat Black',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.35'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
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
                          'Classic Corto',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.05'),
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
                  'Cold Coffee',
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
                          'Iced Cappuccino',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.85'),
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
                          'Iced Latte',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.85'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
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
                          'Iced Americano',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.85'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
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
                          'Iced Mocha',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.85'),
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
