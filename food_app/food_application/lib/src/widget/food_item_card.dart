import 'package:flutter/material.dart';
import 'package:food_application/src/widget/small_buttun.dart';

class FoodItemCard extends StatelessWidget {
  final String title;
  final String desecription;
  final String price;

  FoodItemCard(this.title, this.price, this.desecription);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 5),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/breakfast.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: Text(
                  desecription,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\u{20B5} $price',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SmallButton(text: 'Buy'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
