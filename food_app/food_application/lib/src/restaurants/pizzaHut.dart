import 'package:flutter/material.dart';

class PizzaHut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('images/PizzaHut.jpg'),
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
                  'Pizza Hut',
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
                  'Special Offer',
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
                          '3 Small Pizza',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 7.01'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/pizza3.png'),
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
                          '3 Medium Pizza',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 11'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/pizza3.png'),
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
                          '3 Large Pizza',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 16.50'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/pizza3.png'),
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
                  'Starters',
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
                          'Chicken BBQ Rolls',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/chicken_rolls.png'),
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
                          'Garlic Bread',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 1.75'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/garlic.jpg'),
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
                          'Potato Wedges',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.5'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/potato-wedges.jpg'),
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
                          'Mozzarella Sticks',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.75'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/mozzarella.jpg'),
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
