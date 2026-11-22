import 'package:flutter/material.dart';

import '../app_data/app_color.dart';
import '../app_screens/home_screen.dart';

class Button extends StatelessWidget{
  String text;

  Button({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColor.white,
                fontSize: 20,
                fontWeight: FontWeight(600),
              ),
            ),
            Icon(Icons.arrow_forward,size: 25, color: AppColor.white,),
          ],
    );
  }
}