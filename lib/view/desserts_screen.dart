import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xdd/Comman_weigets/Comman_text.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_TeextFiled.dart';

class Desserts_Screen extends StatefulWidget {
  const Desserts_Screen({Key? key}) : super(key: key);

  @override
  State<Desserts_Screen> createState() => _Desserts_ScreenState();
}

class _Desserts_ScreenState extends State<Desserts_Screen> {
  List desserts = [
    {
      "imge": "asserts/image/Desserts 1.png",
      "name": "French Apple Pie",
      "rating": "4.9",
      "subtitle": "Minute by tuk tuk    Desserts",
    },
    {
      "imge": "asserts/image/Desserts 2.png",
      "name": "Dark Chocolate Cake",
      "rating": "4.7",
      "subtitle": "Cakes by Tella    Desserts",
    },
    {
      "imge": "asserts/image/Desserts 3.png",
      "name": "Street Shake",
      "rating": "4.9",
      "subtitle": "Café Racer    Desserts",
    },
    {
      "imge": "asserts/image/Desserts 4.png",
      "name": "Fudgy Chewy Brownies",
      "rating": "4.9",
      "subtitle": "Minute by tuk tuk    Desserts",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Comman_Text(
                  text: "Desserts",
                  fontweight: FontWeight.w400,
                  fontsize: 20,
                ),
                Spacer(),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: desserts.length,
                itemBuilder: (context, index) {
                  return Comman_Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Comman_Text(
                            text: desserts[index]['name'],
                            color: Colors.white,
                            fontweight: FontWeight.bold,
                            fontsize: 27,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFC6011),
                              ),
                              Comman_Text(
                                text: desserts[index]['rating'],
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Comman_Text(
                                text: desserts[index]['subtitle'],
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 18,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 10),
                    height: height * 0.3,
                    width: width,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        desserts[index]['imge'],
                      ),
                    ),
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
