import 'package:flutter/material.dart';
import 'package:food_application/src/model/food.dart';
import 'package:food_application/src/widget/button.dart';

class FoodDetails extends StatefulWidget {
  final Food food;

  FoodDetails({this.food});

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  var _mediumSpace = SizedBox(
    height: 20.0,
  );

  var _smallSpace = SizedBox(
    height: 10.0,
  );

  var _longSpace = SizedBox(
    height: 50.0,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Food Details',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                widget.food.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            _mediumSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.food.name,
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                Text(
                  '/u{20b5} ${widget.food.price}',
                  style: TextStyle(
                      fontSize: 16.0, color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            Text(
              'Description',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            _smallSpace,
            Text(
              widget.food.description,
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            _mediumSpace,
            Row(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.add_circle),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 15.0,
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_circle),
                ),
              ],
            ),
            _longSpace,
            Button(bText: 'Add to Cart')
          ],
        ),
      ),
    ));
  }
}
