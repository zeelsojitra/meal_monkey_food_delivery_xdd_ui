import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xdd/view/desserts_screen.dart';
import 'package:meal_monkey_food_delivery_xdd/view/home_screen.dart';
import 'package:meal_monkey_food_delivery_xdd/view/latest_offers.dart';
import 'package:meal_monkey_food_delivery_xdd/view/menu_screen.dart';
import 'package:meal_monkey_food_delivery_xdd/view/more_screen.dart';
import 'package:meal_monkey_food_delivery_xdd/view/profile_screen.dart';
import 'package:meal_monkey_food_delivery_xdd/view/splache_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splache_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
