import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final int numOfItem;

  const FoodCard({
    @required this.name,
    @required this.imagePath,
    @required this.numOfItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image(
                  image: AssetImage(imagePath),
                  height: 65.0,
                  width: 65.0,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('$numOfItem Kinds'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
