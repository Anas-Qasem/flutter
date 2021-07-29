import 'package:food_application/src/scoped_model/food_model.dart';
import 'package:food_application/src/scoped_model/user_scoped_model.dart';
import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model with FoodModel, UserModel {
  void fetchAll() {
    fetchFood();
    fetchUserInfos();
  }
}
