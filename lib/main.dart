import 'package:flutter/material.dart';
import 'package:space_app/app_screens/home_screen.dart';

import 'app_screens/details_screen.dart';
import 'app_screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
      },
    );
  }
}
