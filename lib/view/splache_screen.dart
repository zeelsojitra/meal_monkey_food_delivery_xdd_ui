import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xdd/view/spache_2.dart';

import '../Comman_weigets/Comman_Container.dart';

class Splache_Screen extends StatefulWidget {
  const Splache_Screen({Key? key}) : super(key: key);

  @override
  State<Splache_Screen> createState() => _Splache_ScreenState();
}

class _Splache_ScreenState extends State<Splache_Screen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Splache_2(),
            )));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Comman_Container(
      image: DecorationImage(
          fit: BoxFit.cover, image: AssetImage('assets/image/spache.png')),
    ));
  }
}
