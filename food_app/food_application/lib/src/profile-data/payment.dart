import 'package:flutter/material.dart';
import 'package:food_application/src/payment-method.dart/credit_card.dart';
import 'package:food_application/src/screens/main_screen.dart';
import 'package:food_application/src/widget/show_dialog.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Payment',
            style: TextStyle(color: Colors.blueAccent),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose your payment method',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext) => CreditCard()));
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'Credit Card',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.credit_card,
                      color: Colors.blueAccent,
                    ),
                  ),
                  elevation: 7,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ShowLoadingIndicator(context, 'Cash on Delivety');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'Cash on Delivery',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.money,
                      color: Colors.blueAccent,
                    ),
                  ),
                  elevation: 7,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
