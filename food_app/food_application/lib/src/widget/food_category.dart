import 'package:flutter/material.dart';
import 'package:food_application/src/restaurants/breakfast.dart';
import 'package:food_application/src/restaurants/burger.dart';
import 'package:food_application/src/restaurants/coffee.dart';
import 'package:food_application/src/restaurants/icecream.dart';
import 'package:food_application/src/restaurants/pizza.dart';
import 'package:food_application/src/widget/food_card.dart';

//data
import '../data/category_data.dart';

//model

import '../model/category.dart';

class FoodCategory extends StatefulWidget {
  @override
  _FoodCategoryState createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  final List<Category> _categories = categories;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _categories[index].name == 'Burger'
                  ? Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Burgers()))
                  : _categories[index].name == 'Pizza'
                      ? Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Pizza()))
                      : _categories[index].name == 'Coffee Cup'
                          ? Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Coffee()))
                          : _categories[index].name == 'BreakFast'
                              ? Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BreakFast()))
                              : Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => IceCream()));
            },
            child: FoodCard(
              name: _categories[index].name,
              imagePath: _categories[index].imagePath,
              numOfItem: _categories[index].numOfItem,
            ),
          );
        },
      ),
    );
  }
}
