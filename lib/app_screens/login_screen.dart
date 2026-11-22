import 'package:flutter/material.dart';
import 'package:space_app/app_data/app_color.dart';
import 'package:space_app/app_data/app_details.dart';
import 'package:space_app/app_screens/home_screen.dart';
import 'package:space_app/app_widget/button.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        children: [
          Image.asset("assets/images/planet1.png"),
          Container(
            width: 250,
            alignment: Alignment.center,
            padding: EdgeInsetsGeometry.all(10),
            child: Text(
              "Explore The Universe ",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight(900),
                color: AppColor.white,
              ),
            ),
          ),
        Container(
          margin: EdgeInsets.all(25),
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              // todo Navigation to Screen one
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.red,
              fixedSize: Size(400, 70),
            ), child: Button(text: "Explore"),
          ))],
      ),
    );
  }
}
