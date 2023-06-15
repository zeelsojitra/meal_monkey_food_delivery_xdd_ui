import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_TeextFiled.dart';
import '../Comman_weigets/Comman_text.dart';

class New_PassWord_Screen extends StatefulWidget {
  const New_PassWord_Screen({Key? key}) : super(key: key);

  @override
  State<New_PassWord_Screen> createState() => _New_PassWord_ScreenState();
}

class _New_PassWord_ScreenState extends State<New_PassWord_Screen> {
  final gloablekey = GlobalKey<FormState>();
  final Passwordcontroler = TextEditingController();
  final Confime_Passwordcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Comman_Text(
                text: "New Password",
                fontsize: 30,
                fontweight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Comman_Text(
              text:
                  "Please enter your email to receive a\nlink to  create a new password via email",
              fontsize: 20,
              fontweight: FontWeight.w400,
              color: Colors.grey,
            ),
            SizedBox(
              height: 50,
            ),
            Comman_TexxtFiled(
              controller: Passwordcontroler,
              onChanged: (value) {
                gloablekey.currentState!.validate();
              },
              validator: (value) {
                final bool passwordValid = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                    .hasMatch(value!);

                if (value.isEmpty) {
                  return "Required";
                } else if (passwordValid != true) {
                  return "please enter valid password";
                }
              },
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
              hinttext: "Password",
              fillcolor: Colors.grey.shade300,
              filled: true,
            ),
            SizedBox(
              height: 25,
            ),
            Comman_TexxtFiled(
              controller: Confime_Passwordcontroler,
              onChanged: (value) {
                gloablekey.currentState!.validate();
              },
              validator: (value) {
                final bool passwordValid = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                    .hasMatch(value!);

                if (value.isEmpty) {
                  return "Required";
                } else if (passwordValid != true) {
                  return "please enter valid password";
                }
              },
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
              hinttext: "Confirm Password",
              fillcolor: Colors.grey.shade300,
              filled: true,
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
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
          ],
        ),
      ),
    );
  }
}
