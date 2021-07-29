import 'package:flutter/material.dart';

class CakeShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('images/cakeshop.jpg'),
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
                  'The Cake Shop',
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
                  'The Manakeesh',
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
                          'Zaatar Manakeesh',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.30'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/zaatar.jpg'),
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
                          'White Cheese Manakeesh',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.95'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/white.jpg'),
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
                          'Beidou Sausage Manakeesh',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 4.60'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/Beidou Sausage.jpg'),
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
                  'Bagels',
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
                          'Cream Cheese',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.75'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/bagel_cream.jpg'),
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
                          'Egg and Cheese',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 4'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/Egg-Cheese.jpg'),
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
                          'Turkey Avocado',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 4'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/avocado.jpg'),
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
                  'The Cake Pieces',
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
                          'Chocolate Mossy',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.90'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/mossy.jpg'),
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
                          'Ferrereo Rocher Cake',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 2.90'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/ferrero-rochers.png'),
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
                          'Red Velvet Cheesecake',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('JOD 3.75'),
                      ],
                    ),
                    Image(
                      image: AssetImage('images/red.jpg'),
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
