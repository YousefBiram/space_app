import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/app_data/app_details.dart';

import '../app_data/app_color.dart';
import 'home_screen.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = "detail";
  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)!.settings.arguments as Planet;
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/planet2.png",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, AppColor.black],
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsetsGeometry.only(top: 50),
                  alignment: Alignment.topCenter,
                  child: Row(
                    spacing: 100,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.red,
                          fixedSize: Size(55, 55),
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                        ),
                        child: Icon(Icons.arrow_back, color: AppColor.white),
                      ),
                      Text(
                        "Explore",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 24,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsetsGeometry.only(top: 150),
                  alignment: Alignment.topLeft,
                  child: Text(
                    planet.title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 30,
                      fontWeight: FontWeight(800),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 350,
            child: Flutter3DViewer(
              src: planet.model,
              key: ValueKey(planet.model),
              progressBarColor: AppColor.red,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                spacing: 15,
                children: [
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "About",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 25,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      planet.about,
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(400),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Distance from Sun (km) : ${planet.disFromSun}",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Length of Day (hours) : ${planet.lenOfDay}",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Orbital Period (Earth years) : ${planet.orbitalPeriod}",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Radius (km) : ${planet.radius}",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Mass (kg) : ${planet.mass}",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Gravity (m/s²) : ${planet.gravity}",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsGeometry.only(left: 20, right: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Surface Area (km²) : ${planet.surfaceArea}",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

