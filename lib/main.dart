import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xd/view/Login_screen.dart';
import 'package:meal_monkey_food_delivery_xd/view/Sign_up.dart';
import 'package:meal_monkey_food_delivery_xd/view/home_screen.dart';
import 'package:meal_monkey_food_delivery_xd/view/new_password_screen.dart';
import 'package:meal_monkey_food_delivery_xd/view/otp_screen.dart';
import 'package:meal_monkey_food_delivery_xd/view/page_view.dart';
import 'package:meal_monkey_food_delivery_xd/view/reset_password.dart';
import 'package:meal_monkey_food_delivery_xd/view/splache_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
