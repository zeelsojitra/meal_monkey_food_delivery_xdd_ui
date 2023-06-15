import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_text.dart';

class Latest_offers extends StatefulWidget {
  const Latest_offers({Key? key}) : super(key: key);

  @override
  State<Latest_offers> createState() => _Latest_offersState();
}

class _Latest_offersState extends State<Latest_offers> {
  List Latest_offers = [
    {
      "imge": "asserts/image/Latest Offers 1.png",
      "name": "Café de Noires",
    },
    {
      "imge": "asserts/image/Latest Offers 2.png",
      "name": "Isso",
    },
    {
      "imge": "asserts/image/Latest Offers 3.png",
      "name": "Cafe Beans",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Comman_Text(
                    text: "Latest Offers",
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
              Comman_Text(
                text: "Find discounts, Offers special\nmeals and more!",
                color: Colors.grey,
                fontsize: 18,
                fontweight: FontWeight.w400,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Center(
                  child: Comman_Text(
                    text: "Check Offers",
                    color: Colors.white,
                    fontsize: 18,
                    fontweight: FontWeight.w500,
                  ),
                ),
                height: height * 0.05,
                width: width * 0.47,
                decoration: BoxDecoration(
                  color: Color(0xffFC6011),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: Latest_offers.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Comman_Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          margin: EdgeInsets.only(bottom: 10),
                          height: height * 0.25,
                          width: width,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              Latest_offers[index]['imge'],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Comman_Text(
                                text: Latest_offers[index]['name'],
                                color: Colors.black,
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
                                    text: "4.9",
                                    color: Colors.black,
                                    fontweight: FontWeight.bold,
                                    fontsize: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Comman_Text(
                                    text: "(124 ratings) Café     Western Food",
                                    color: Colors.black,
                                    fontweight: FontWeight.bold,
                                    fontsize: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
