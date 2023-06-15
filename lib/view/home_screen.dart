import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_TeextFiled.dart';
import '../Comman_weigets/Comman_text.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List Food = [
    {
      "img": "asserts/image/food.png",
      "name": "Food",
    },
    {
      "img": "asserts/image/Sri Lankan.png",
      "name": "Sri Lankan",
    },
    {
      "img": "asserts/image/Italian.png",
      "name": "Italian",
    },
    {
      "img": "asserts/image/Indian.png",
      "name": "Indian",
    },
  ];
  List populer = [
    {
      'img': "asserts/image/pizza.png",
      'name': "Minute by tuk tuk",
    },
    {
      'img': "asserts/image/cafe the noir.png",
      'name': "Café de Noir",
    },
    {
      'img': "asserts/image/backs by tell.png",
      'name': "Bakes by Tella",
    },
  ];
  List Mostpopuler = [
    {
      'img': "asserts/image/pizza1.png",
      'name': "Café De Bambaa",
    },
    {
      'img': "asserts/image/sandwich.png",
      'name': "Burger by Bella",
    },
  ];
  List RecentImage = [
    {
      "img": "asserts/image/pizza2.png",
      "name": "Mulberry Pizza by Josh",
      "subtitle": "Café     Western Food",
    },
    {
      "img": "asserts/image/coffei.png",
      "name": "Barita",
      "subtitle": "Café     Coffee",
    },
    {
      "img": "asserts/image/pizza3.png",
      "name": "Pizza Rush Hour",
      "subtitle": "Café     Italian Food",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Comman_Text(
                          text: "Good morning Akila!",
                          fontsize: 23,
                          fontweight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                              size: 25,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Comman_Text(
                      text: "Delivering to",
                      fontsize: 18,
                      fontweight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Comman_Text(
                          text: "Current Location",
                          fontsize: 18,
                          fontweight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 20,
                              color: Color(0xffFC6011),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Comman_TexxtFiled(
                      FocusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      focouseborder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      disableborder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      hinttext: "Search food",
                      fillcolor: Colors.grey.shade300,
                      filled: true,
                      prefixicon: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.15,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        // Container(
                        //   margin: EdgeInsets.only(right: 10, left: 10),
                        //   width: width * 0.3,
                        //   decoration: BoxDecoration(
                        //     color: Colors.black,
                        //     image: DecorationImage(
                        //       image: AssetImage(
                        //         Food[index]['img'],
                        //       ),
                        //     ),
                        //     borderRadius: BorderRadius.circular(20),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Image.asset(
                            Food[index]['img'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Comman_Text(
                          text: Food[index]['name'],
                          fontsize: 18,
                          fontweight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Comman_Text(
                      text: "Popular Restaurents",
                      fontsize: 23,
                      fontweight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    Spacer(),
                    Comman_Text(
                      text: "View All",
                      fontsize: 20,
                      fontweight: FontWeight.w400,
                      color: Color(0xffFC6011),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 1,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Comman_Container(
                            height: height * 0.25,
                            width: width,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(populer[index]['img']),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Comman_Text(
                              text: populer[index]['name'],
                              fontsize: 23,
                              fontweight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffFC6011),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Comman_Text(
                                  text: "4.9",
                                  fontsize: 18,
                                  fontweight: FontWeight.w400,
                                  color: Color(0xffFC6011),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Comman_Text(
                                  text: "(124 ratings) Café     Western Food",
                                  fontsize: 18,
                                  fontweight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Comman_Text(
                      text: "Most Popular",
                      fontsize: 23,
                      fontweight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    Spacer(),
                    Comman_Text(
                      text: "View All",
                      fontsize: 20,
                      fontweight: FontWeight.w400,
                      color: Color(0xffFC6011),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.21,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            Mostpopuler[index]['img'],
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Comman_Text(
                            text: Mostpopuler[index]['name'],
                            fontsize: 20,
                            fontweight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Comman_Text(
                                text: "Café     Western Food",
                                fontsize: 16,
                                fontweight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Icon(
                                size: 18,
                                Icons.star,
                                color: Color(0xffFC6011),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Comman_Text(
                                text: "4.9",
                                fontsize: 18,
                                fontweight: FontWeight.w400,
                                color: Color(0xffFC6011),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Comman_Text(
                      text: "Recent Items",
                      fontsize: 23,
                      fontweight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    Spacer(),
                    Comman_Text(
                      text: "View All",
                      fontsize: 20,
                      fontweight: FontWeight.w400,
                      color: Color(0xffFC6011),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.36,
                    child: ListView.builder(
                      itemCount: RecentImage.length,
                      shrinkWrap: false,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Column(
                        children: [
                          Comman_Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: height * 0.1,
                            width: width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      RecentImage[index]["img"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Comman_Text(
                                        text: RecentImage[index]['name'],
                                        color: Colors.black,
                                        fontweight: FontWeight.bold,
                                        fontsize: 20,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Comman_Text(
                                        text: RecentImage[index]['subtitle'],
                                        color: Colors.grey.shade300,
                                        fontweight: FontWeight.bold,
                                        fontsize: 16,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFC6011),
                                            size: 20,
                                          ),
                                          Comman_Text(
                                            text: '4.9',
                                            color: Color(0xffFC6011),
                                            fontweight: FontWeight.w400,
                                            fontsize: 16,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Comman_Text(
                                            text: '(124 Ratings)',
                                            color: Colors.grey.shade300,
                                            fontweight: FontWeight.w400,
                                            fontsize: 16,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
