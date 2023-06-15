import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_text.dart';

class Splache_2 extends StatefulWidget {
  const Splache_2({Key? key}) : super(key: key);

  @override
  State<Splache_2> createState() => _Splache_2State();
}

class _Splache_2State extends State<Splache_2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Comman_Container(
                height: height * 0.5,
                width: width,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/Organe top shape.png')),
              ),
              Positioned(
                top: 350,
                right: 0,
                left: 0,
                child: Center(
                  child: Image.asset(
                    'assets/image/Monkey face.png',
                    height: 160,
                    width: 160,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Comman_Text(
                text: "Meal",
                fontsize: 35,
                fontweight: FontWeight.bold,
                color: Color(0xffFC6011),
              ),
              SizedBox(
                width: 7,
              ),
              Comman_Text(
                text: "Monkey",
                fontsize: 35,
                fontweight: FontWeight.bold,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Comman_Text(
            text: "Food Delivery",
            fontsize: 18,
            fontweight: FontWeight.w400,
            color: Colors.black,
          ),
          SizedBox(
            height: 30,
          ),
          Comman_Text(
            text:
                "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
            fontsize: 18,
            fontweight: FontWeight.w400,
            color: Colors.grey,
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Comman_Container(
              child: Center(
                child: Comman_Text(
                  text: "Login",
                  fontsize: 20,
                  color: Colors.white,
                  fontweight: FontWeight.bold,
                ),
              ),
              BorderRadius: BorderRadius.circular(40),
              height: height * 0.07,
              width: width,
              color: Color(0xffFC6011),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Comman_Container(
              child: Center(
                child: Comman_Text(
                  text: "Create an Account",
                  fontsize: 20,
                  color: Color(0xffFC6011),
                  fontweight: FontWeight.bold,
                ),
              ),
              BorderRadius: BorderRadius.circular(40),
              height: height * 0.07,
              border: Border.all(
                color: Color(0xffFC6011),
                width: 1,
              ),
              width: width,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
