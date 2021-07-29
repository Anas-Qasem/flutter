import 'package:flutter/material.dart';
import 'package:food_application/src/payment-method.dart/succcess.dart';
import 'package:food_application/src/widget/button.dart';

// ignore: must_be_immutable
class CreditCard extends StatelessWidget {
  // ignore: unused_field
  String _num;
  // ignore: unused_field
  String _cvcNUm;
  // ignore: unused_field
  String _name;
  // ignore: unused_field
  String _day;
  // ignore: unused_field
  String _month;
  // ignore: unused_field
  String _year;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                child: Image(
                  image: AssetImage('images/Visa.png'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CARD NUMBER',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 230,
                          child: Card(
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: _buildCardNumField(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVC',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 80,
                          child: Card(
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: _buildCVCField(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CARD HOLDER NAME',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      color: Colors.grey.shade300,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: _buildHolderNameField(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EXPERITION DATE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 80,
                          child: Card(
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: _buildDayField(),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 150,
                          child: Card(
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: _buildMonthField(),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 100,
                          child: Card(
                            color: Colors.grey.shade300,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: _buildYearField(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext) => Success()));
                },
                child: Button(bText: 'COMPLETE ORDER'),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildCardNumField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "1111 1111 1111 1111",
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          ),
        ),
        onSaved: (String num) {
          _num = num.trim();
        },
        validator: (String num) {
          String errorMessage;
          if (num == null) {
            errorMessage = "Invalid card number";
          }
          return errorMessage;
        },
      ),
    );
  }

  Widget _buildCVCField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "253",
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          ),
        ),
        onSaved: (String cvc) {
          _cvcNUm = cvc.trim();
        },
        validator: (String cvc) {
          String errorMessage;
          if (cvc == null) {
            errorMessage = "Invalid cvc";
          }
          return errorMessage;
        },
      ),
    );
  }

  Widget _buildHolderNameField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Your Name",
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          ),
        ),
        onSaved: (String name) {
          _name = name.trim();
        },
        validator: (String name) {
          String errorMessage;
          if (name == null) {
            errorMessage = "Invalid cvc";
          }
          return errorMessage;
        },
      ),
    );
  }

  Widget _buildDayField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "day",
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          ),
        ),
        onSaved: (String day) {
          _day = day.trim();
        },
        validator: (String day) {
          String errorMessage;
          if (day == null) {
            errorMessage = "Invalid cvc";
          }
          return errorMessage;
        },
      ),
    );
  }

  Widget _buildMonthField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Month",
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          ),
        ),
        onSaved: (String month) {
          _month = month.trim();
        },
        validator: (String month) {
          String errorMessage;
          if (month == null) {
            errorMessage = "Invalid cvc";
          }
          return errorMessage;
        },
      ),
    );
  }

  Widget _buildYearField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "year",
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          ),
        ),
        onSaved: (String year) {
          _year = year.trim();
        },
        validator: (String year) {
          String errorMessage;
          if (year == null) {
            errorMessage = "Invalid cvc";
          }
          return errorMessage;
        },
      ),
    );
  }
}
