import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_text.dart';

class Page_View extends StatefulWidget {
  const Page_View({Key? key}) : super(key: key);

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  List pageview = [
    {
      'img': "assets/image/pageview1.png",
      'title': "Find Food You Love",
      'subtitle':
          "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
    },
    {
      'img': "assets/image/pageview2.png",
      'title': "Fast Delivery",
      'subtitle': "Fast food delivery to your home, office\n wherever you are",
    },
    {
      'img': "assets/image/pageview3.png",
      'title': "Live Tracking",
      'subtitle':
          "Real time tracking of your food on the app\nonce you placed the order",
    },
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Comman_Container(
                height: height * 0.7,
                width: width,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      selected = value;
                    });
                  },
                  children: List.generate(
                    3,
                    (index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Image.asset(
                          pageview[index]['img'],
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Comman_Text(
                          text: pageview[index]['title'],
                          color: Colors.black,
                          fontweight: FontWeight.w400,
                          fontsize: 20,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Comman_Text(
                          text: pageview[index]['subtitle'],
                          color: Colors.grey,
                          fontweight: FontWeight.w400,
                          fontsize: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 475,
                left: 180,
                right: 0,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: selected == index
                                  ? Color(0xffFC6011)
                                  : Colors.grey.shade300,
                            ),
                          )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: () {},
              child: Comman_Container(
                child: Center(
                  child: Comman_Text(
                    text: "Next",
                    fontsize: 20,
                    color: Colors.white,
                    fontweight: FontWeight.bold,
                  ),
                ),
                BorderRadius: BorderRadius.circular(40),
                height: height * 0.06,
                width: width,
                color: Color(0xffFC6011),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
