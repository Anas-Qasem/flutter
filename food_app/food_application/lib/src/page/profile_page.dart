import 'dart:io';

import 'package:flutter/material.dart';

import 'package:food_application/src/model/user_info.dart';
import 'package:food_application/src/profile-data/location.dart';
import 'package:food_application/src/profile-data/payment.dart';
import 'package:food_application/src/scoped_model/main_model.dart';
import 'package:food_application/src/widget/custom_list_tile.dart';
// import 'package:food_application/src/widget/small_buttun.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var image;
  void imagem(ImageSource source) async {
    PickedFile picked = await ImagePicker().getImage(
      preferredCameraDevice: CameraDevice.front,
      source: source,
    );

    setState(() {
      image = File(picked.path);
    });
  }

  bool turnOnNotification = false;
  bool turnOnLocation = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScopedModelDescendant(
        builder: (BuildContext context, Widget child, MainModel model) {
          UserInfo userInfo = model.getUserDetails(model.authtenticatedUser.id);

          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ImageProfile(),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${userInfo.username}",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "${userInfo.email}",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext) => Location()));
                              },
                              child: CustomListTile(
                                icon: Icons.location_on,
                                text: "Location",
                              ),
                            ),
                            Divider(
                              height: 20.0,
                              color: Colors.grey,
                            ),
                            CustomListTile(
                              icon: Icons.visibility,
                              text: "Change Password",
                            ),
                            Divider(
                              height: 20.0,
                              color: Colors.grey,
                            ),
                            CustomListTile(
                              icon: Icons.shopping_cart,
                              text: "Shipping",
                            ),
                            Divider(
                              height: 20.0,
                              color: Colors.grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext) => Payment()));
                              },
                              child: CustomListTile(
                                icon: Icons.payment,
                                text: "Payment",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "App Notification",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                Switch(
                                  value: turnOnNotification,
                                  onChanged: (bool value) {
                                    // print("The value: $value");
                                    setState(() {
                                      turnOnNotification = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Divider(
                              height: 10.0,
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Location Tracking",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                Switch(
                                  value: turnOnLocation,
                                  onChanged: (bool value) {
                                    // print("The value: $value");
                                    setState(() {
                                      turnOnLocation = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget ImageProfile() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: image == null
              ? AssetImage('images/noimage.png')
              : FileImage(File(image.path)),
        ),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: (builder) => BottomSheet());
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.blueAccent,
              size: 28.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget BottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  imagem(ImageSource.camera);
                },
                icon: Icon(
                  Icons.camera,
                  color: Colors.blueAccent,
                ),
                label: Text('Camera'),
              ),
              // ignore: deprecated_member_use
              FlatButton.icon(
                onPressed: () {
                  imagem(ImageSource.gallery);
                },
                icon: Icon(
                  Icons.image,
                  color: Colors.blueAccent,
                ),
                label: Text('Gallery'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
