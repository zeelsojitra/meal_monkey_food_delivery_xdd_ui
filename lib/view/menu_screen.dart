import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xdd/Comman_weigets/Comman_Container.dart';
import 'package:meal_monkey_food_delivery_xdd/Comman_weigets/Comman_TeextFiled.dart';
import 'package:meal_monkey_food_delivery_xdd/Comman_weigets/Comman_text.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({Key? key}) : super(key: key);

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

class _Menu_ScreenState extends State<Menu_Screen> {
  List menu = [
    {
      "img": "asserts/image/food.png",
      "title": "Food",
      'items': "120 items",
    },
    {
      "img": "asserts/image/Beverages.png",
      "title": "Beverages",
      'items': "220 items",
    },
    {
      "img": "asserts/image/Desserts.png",
      "title": "Desserts",
      'items': "155 items",
    },
    {
      "img": "asserts/image/Promotions.png",
      "title": "Promotions",
      'items': "25 items",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Comman_Text(
                    text: "Menu",
                    fontsize: 25,
                    fontweight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 22,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 52,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Comman_TexxtFiled(
                  prefixicon: Icon(
                    Icons.search_rounded,
                    size: 25,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                  focouseborder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                  FocusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                  disableborder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none),
                  filled: true,
                  hinttext: "Search food",
                  fillcolor: Colors.grey.shade200,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.6,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.7,
                        child: ListView.builder(
                          itemCount: menu.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Comman_Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 70, vertical: 32),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Comman_Text(
                                                fontweight: FontWeight.bold,
                                                text: menu[index]['title'],
                                                color: Colors.black,
                                                fontsize: 20,
                                              ),
                                              Comman_Text(
                                                fontsize: 16,
                                                fontweight: FontWeight.w400,
                                                text: menu[index]['items'],
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                        BoxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0, 3),
                                            blurRadius: 1,
                                            spreadRadius: 1,
                                          )
                                        ],
                                        margin: EdgeInsets.only(bottom: 20),
                                        height: height * 0.11,
                                        width: width,
                                        color: Colors.white,
                                        BorderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(60),
                                          bottomLeft: Radius.circular(60),
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      Positioned(
                                        top: 20,
                                        left: -20,
                                        child: Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            menu[index]['img'],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 30,
                                        right: -13,
                                        child: Container(
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xffFC6011),
                                            size: 20,
                                          ),
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(0, 3),
                                                blurRadius: 1,
                                                spreadRadius: 1,
                                              )
                                            ],
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
