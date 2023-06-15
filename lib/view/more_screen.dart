import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xdd/Comman_weigets/Comman_Container.dart';

import '../Comman_weigets/Comman_text.dart';

class More_Screen extends StatefulWidget {
  const More_Screen({Key? key}) : super(key: key);

  @override
  State<More_Screen> createState() => _More_ScreenState();
}

class _More_ScreenState extends State<More_Screen> {
  List More = [
    {
      "img": "asserts/image/002-income.png",
      "name": "Payment Details",
    },
    {
      "img": "asserts/image/Group 8094.png",
      "name": "My Orders",
    },
    {
      "img": "asserts/image/Group 8081.png",
      "name": "Notifications",
    },
    {
      "img": "asserts/image/004-inbox-mail.png",
      "name": "Inbox",
    },
    {
      "img": "asserts/image/005-info.png",
      "name": "About Us",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          children: [
            Row(
              children: [
                Comman_Text(
                  text: "More",
                  color: Colors.black,
                  fontsize: 25,
                  fontweight: FontWeight.w400,
                ),
                Spacer(),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: More.length,
                itemBuilder: (context, index) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Comman_Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    More[index]['img'],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Comman_Text(
                              text: More[index]['name'],
                              color: Colors.black,
                              fontsize: 18,
                              fontweight: FontWeight.w400,
                            ),
                            Spacer(),
                            index == 3
                                ? CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Color(0xffFF1717),
                                    child: Comman_Text(
                                      text: "15",
                                      color: Colors.white,
                                      fontweight: FontWeight.bold,
                                      fontsize: 13,
                                    ),
                                  )
                                : SizedBox(),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(bottom: 20),
                        height: height * 0.13,
                        width: width,
                        color: Colors.grey.shade300,
                      ),
                      Positioned(
                        top: 30,
                        right: -10,
                        child: Container(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 20,
                          ),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
