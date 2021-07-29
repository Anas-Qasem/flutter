import 'package:flutter/material.dart';
import 'package:food_application/src/page/explore_page.dart';
// import 'package:food_application/src/page/food_details.dart';
//import 'package:food_application/src/page/food_details.dart';
// import 'package:food_application/src/page/food_details.dart';
// import 'package:food_application/src/scoped_model/food_model.dart';
//import 'package:food_application/src/scoped_model/main_model.dart';
//import 'package:food_application/src/widget/bought.dart';
import 'package:food_application/src/widget/bought_food.dart';
import 'package:food_application/src/widget/food_category.dart';
import 'package:food_application/src/widget/search.dart';

import 'package:food_application/src/widget/top_home_info.dart';
//import 'package:scoped_model/scoped_model.dart';

//data
import '../model/food.dart';
import 'package:food_application/src/data/food_data.dart';

class HomePage extends StatefulWidget {
  // final FoodModel foodModel;
  // HomePage(this.foodModel);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Foood> _foods = foods;
  List<Food> foodList = [];
  @override
  void initState() {
    // widget.foodModel.fetchFood();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 20, right: 20),
          children: [
            TopHome(),
            FoodCategory(),
            SizedBox(
              height: 20.0,
            ),
            //Search(),
            //SizedBox(
            //  height: 20.0,
            //),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Frequently Bought Foods',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RestaurantsPage()));
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {},
              child: Column(children: _foods.map(_buildFoodItems).toList()),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItems(Foood food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: BoughtFood(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        price: food.price,
        discount: food.discount,
        rating: food.rating,
        category: food.category,
      ),
    );
  }
}
