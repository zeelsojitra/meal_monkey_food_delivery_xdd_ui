import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery_xdd/Comman_weigets/Comman_Container.dart';

import '../Comman_weigets/Comman_TeextFiled.dart';
import '../Comman_weigets/Comman_text.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  final gloablekey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Form(
            key: gloablekey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Comman_Text(
                        text: "Profile",
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
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.camera_alt_rounded,
                                color: Colors.grey.shade300),
                          ],
                        ),
                        radius: 70,
                        backgroundImage:
                            AssetImage("asserts/image/profile.png"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Color(0xffFC6011),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Comman_Text(
                            text: "Edit Profile",
                            color: Color(0xffFC6011),
                            fontweight: FontWeight.w400,
                            fontsize: 18,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Comman_Text(
                        text: "Hi there Emilia!",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 22,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Comman_Text(
                        text: "Sign Out",
                        color: Colors.grey.shade400,
                        fontweight: FontWeight.bold,
                        fontsize: 22,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Comman_TexxtFiled(
                    onChanged: (value) {
                      gloablekey.currentState!.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Name";
                      }
                    },
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
                    hinttext: "Name",
                    fillcolor: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Comman_TexxtFiled(
                    onChanged: (value) {
                      gloablekey.currentState!.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                    },
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
                    hinttext: "Email",
                    fillcolor: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Comman_TexxtFiled(
                    onChanged: (value) {
                      gloablekey.currentState!.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Mobile No";
                      }
                    },
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
                    hinttext: "Mobile No",
                    fillcolor: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Comman_TexxtFiled(
                    onChanged: (value) {
                      gloablekey.currentState!.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Address";
                      }
                    },
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
                    hinttext: "Address",
                    fillcolor: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Comman_TexxtFiled(
                    onChanged: (value) {
                      gloablekey.currentState!.validate();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                    },
                    obscureText: true,
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
                    hinttext: "Password",
                    fillcolor: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Comman_TexxtFiled(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                    },
                    obscureText: true,
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
                    hinttext: "Confirm Password",
                    fillcolor: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Comman_Container(
                    ontap: () {
                      if (gloablekey.currentState!.validate()) {}
                    },
                    child: Center(
                      child: Comman_Text(
                        text: "Save",
                        color: Colors.white,
                        fontweight: FontWeight.w500,
                        fontsize: 20,
                      ),
                    ),
                    height: height * 0.066,
                    width: width,
                    BorderRadius: BorderRadius.circular(40),
                    color: Color(0xffFC6011),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
