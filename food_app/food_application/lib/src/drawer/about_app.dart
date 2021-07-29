import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('About The App'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                color: Colors.white54,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is Foodies ?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Foodies is a leading online food delivery service that operates Jordan, We seamlessly connect customers with their favorite restaurants. It takes just few taps from our platform to place an order through Foodies from your favorite place'),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white54,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What does Foodies do ?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'We simply take your submitted order and send it to the restaurant through a completely automated process, so you don’t have to deal with all the hassle of ordering and we make sure that you receive your order on time, every-time!'),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                color: Colors.white54,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'How do I place an order on Foodies?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Go to Foodies app, log in with your account, then place an order from your favorite restaurant.'),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                color: Colors.white54,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Do you have special offers?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          ' Yes. You can view the latest restaurant promotions and discount coupon in offers tab.'),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                color: Colors.white54,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If I placed an order, how long does it take to receive the order?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'It depends on the restaurants estimated delivery time. Each restaurant will display its order delivery time in the restaurants Info section. However, the time may vary depending on the road traffic congestion.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
