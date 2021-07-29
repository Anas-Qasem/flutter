import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 75.0,
                width: 45.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Color(0xffd3d3d3),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Color(0xffd3d3d3),
                      ),
                    ),
                    Text(
                      '0',
                      style:
                          TextStyle(color: Color(0xffd3d3d3), fontSize: 18.0),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xffd3d3d3),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/lunch.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(35.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0)
                    ]),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grilled Chicken',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '3.0',
                    style: TextStyle(color: Colors.amber),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    height: 25.0,
                    width: 120.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Chicken',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text('x',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
