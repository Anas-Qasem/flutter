import 'package:flutter/material.dart';
// import 'package:food_application/src/add/add_food_item.dart';
import 'package:food_application/src/drawer/about_app.dart';
import 'package:food_application/src/page/explore_page.dart';
// import 'package:food_application/src/page/favorite_page.dart';
import 'package:food_application/src/page/home_page.dart';
import 'package:food_application/src/page/order_page.dart';
import 'package:food_application/src/page/profile_page.dart';
//import 'package:food_application/src/page/sign_in_page.dart';
import 'package:food_application/src/page/sign_page.dart';
// import 'package:food_application/src/restaurants/burger.dart';
// import 'package:food_application/src/scoped_model/food_model.dart';
import 'package:food_application/src/scoped_model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

class MainScreen extends StatefulWidget {
  final MainModel model;

  MainScreen({this.model});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  RestaurantsPage restaurantsPage;
  OrderPage orderPage;
  ProfilePage profilePage;

  @override
  void initState() {
    // widget.model.fetchFood();

    homePage = HomePage();
    restaurantsPage = RestaurantsPage();
    orderPage = OrderPage();
    profilePage = ProfilePage();
    pages = [homePage, restaurantsPage, orderPage, profilePage];
    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              currentIndex == 0
                  ? "Food App"
                  : currentIndex == 1
                      ? "Restaurants"
                      : currentIndex == 2
                          ? "Orders"
                          : "Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              currentIndex == 3
                  ? ScopedModelDescendant(builder:
                      (BuildContext context, Widget child, MainModel model) {
                      return IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext) => SignInPage()));
                          },
                          icon: Icon(
                            Icons.logout,
                            color: Theme.of(context).primaryColor,
                          ));
                    })
                  : IconButton(
                      onPressed: () {},
                      icon: _buildShoppingCard(),
                    ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    children: [
                      /*ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddFoodItem()));
                        },
                        leading: Icon(Icons.list),
                        title: Text(
                          'Add Food Item ',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),*/
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.info),
                        title: Text('About App'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AboutApp()));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.restaurant),
                        title: Text('Restaurants'),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RestaurantsPage()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                currentIndex = index;
                currentPage = pages[index];
              });
            },
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                // ignore: deprecated_member_use
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.restaurant,
                ),
                // ignore: deprecated_member_use
                title: Text('Restaurants'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                // ignore: deprecated_member_use
                title: Text('Order'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                // ignore: deprecated_member_use
                title: Text('Profile'),
              ),
            ],
          ),
          body: currentPage,
        ),
      ),
    );
  }

  Widget _buildShoppingCard() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => OrderPage()));
      },
      child: Stack(
        children: [
          Icon(
            Icons.shopping_cart,
            color: Theme.of(context).primaryColor,
          ),
          Positioned(
            right: 0.0,
            child: Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
