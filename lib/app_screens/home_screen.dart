import 'package:flutter/material.dart';
import 'package:space_app/app_data/app_color.dart';
import 'package:space_app/app_data/app_details.dart';
import 'package:space_app/app_screens/details_screen.dart';
import 'package:space_app/app_widget/button.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        children: [
          Image.asset("assets/images/planet2.png"),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, AppColor.black],
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.center,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 200, left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Which planet",
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 24,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "would you like to explore?",
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 24,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsetsGeometry.only(top: 50),
            alignment: Alignment.topCenter,
            child: Text(
              "Explore",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppColor.white,
                fontSize: 24,
                fontWeight: FontWeight(600),
              ),
            ),
          ),
          Container(
            margin: EdgeInsetsGeometry.only(top: 300, left: 25, right: 25),
            child: Image.asset(planets[index].image),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsetsGeometry.only(bottom: 150),
            child: Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (index == 0) {
                      return;
                    } else {
                      index--;
                    }
                    setState(() {});
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
                  planets[index].name,
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 24,
                    fontWeight: FontWeight(600),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (index == planets.length - 1) {
                      return;
                    } else {
                      index++;
                    }
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.red,
                    fixedSize: Size(55, 55),
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                  ),
                  child: Icon(Icons.arrow_forward, color: AppColor.white),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                // todo Navigation to Detail Screen
                Navigator.pushNamed(context, DetailsScreen.routeName,arguments: planets[index]);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.red,
                fixedSize: Size(400, 70),
              ),
              child: Button(text: "Explore ${planets[index].name}"),
            ),
          ),
        ],
      ),
    );
  }
}
