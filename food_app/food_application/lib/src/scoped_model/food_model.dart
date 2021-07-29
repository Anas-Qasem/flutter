import 'dart:convert';

import 'package:food_application/src/model/food.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];
  bool _isLoading = false;

  bool get isLoading {
    return _isLoading;
  }

  List<Food> get foods {
    return List.from(_foods);
  }

  int get foodLength {
    return _foods.length;
  }

  Future<bool> addFood(Food food) async {
    _isLoading = true;
    notifyListeners();
    // _foods.add(food);
    try {
      final Map<String, dynamic> foodData = {
        "title": food.name,
        "desecription": food.description,
        'price': food.price,
        'discount': food.discount,
        'category': food.category,
        'imagePath': food.imagePath,
      };
      final http.Response response = await http.post(
          Uri.parse('https://flutter-food-a2151.firebaseio.com/foods.json'),
          body: json.encode(foodData));

      final Map<String, dynamic> responseData = json.decode(response.body);

      // ignore: unused_local_variable
      Food foodWithId = Food(
        id: responseData['name'],
        name: food.name,
        description: food.description,
        price: food.price,
        discount: food.discount,
        category: food.category,
        imagePath: food.imagePath,
      );

      _isLoading = false;
      notifyListeners();
      fetchFood();
      return Future.value(true);
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }

  Future<bool> fetchFood() async {
    _isLoading = true;
    notifyListeners();
    try {
      final http.Response response = await http.get(
          Uri.parse('https://flutter-food-a2151.firebaseio.com/foods.json'));

      final Map<String, dynamic> fetchData = json.decode(response.body);

      final List<Food> foodItems = [];

      fetchData.forEach((String id, dynamic foodData) {
        Food foodItem = Food(
          id: id,
          name: foodData["title"],
          description: foodData["desecription"],
          category: foodData["category"],
          price: double.parse(foodData["price"].toString()),
          discount: double.parse(foodData["discount"].toString()),
          imagePath: foodData["imagePath"],
        );
        foodItems.add(foodItem);
      });
      _foods = foodItems;
      _isLoading = false;
      notifyListeners();
      return Future.value(true);
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }

  Future<bool> updateFood(Map<String, dynamic> foodData, String foodId) async {
    _isLoading = true;
    notifyListeners();

    // get the food by id
    Food theFood = getFoodItemById(foodId);

    // get the index of the food
    int foodIndex = _foods.indexOf(theFood);

    try {
      await http.put(
          Uri.parse(
              'https://flutter-food-a2151.firebaseio.com/foods/${foodId}.json'),
          body: json.encode(foodData));
      Food updateFoodItem = Food(
        id: foodId,
        name: foodData["title"],
        category: foodData["category"],
        discount: foodData['discount'],
        price: foodData['price'],
        description: foodData['description'],
        imagePath: foodData['imagePath'],
      );
      _foods[foodIndex] = updateFoodItem;

      _isLoading = false;
      notifyListeners();
      return Future.value(true);
    } catch (erroe) {
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }

  Future<bool> deleteFood(String foodId) async {
    _isLoading = true;
    notifyListeners();

    try {
      // ignore: unused_local_variable
      final http.Response response = await http.delete(Uri.parse(
          'https://flutter-food-a2151.firebaseio.com/foods/${foodId}.json'));

      // delete item from the list of food items
      _foods.removeWhere((Food food) => food.id == foodId);

      _isLoading = false;
      notifyListeners();
      return Future.value(true);
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }

  Food getFoodItemById(String foodId) {
    Food food;
    for (int i = 0; i < _foods.length; i++) {
      if (_foods[i].id == foodId) {
        food = _foods[i];
        break;
      }
    }
    return food;
  }
}
