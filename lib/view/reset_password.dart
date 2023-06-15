import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_TeextFiled.dart';
import '../Comman_weigets/Comman_text.dart';

class Reset_Password extends StatefulWidget {
  const Reset_Password({Key? key}) : super(key: key);

  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
  final Emailcontroler = TextEditingController();
  final gloablekey = GlobalKey<FormState>();
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
                text: "Reset Password",
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
              height: 40,
            ),
            Comman_TexxtFiled(
              controller: Emailcontroler,
              onChanged: (value) {
                gloablekey.currentState!.validate();
              },
              validator: (value) {
                final bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value!);

                if (emailValid) {
                  return null;
                } else {
                  return "Please enter valid Email Id";
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
              hinttext: "Email",
              fillcolor: Colors.grey.shade300,
              filled: true,
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                if (gloablekey.currentState!.validate()) {}
              },
              child: Comman_Container(
                child: Center(
                  child: Comman_Text(
                    text: "Send",
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
          ],
        ),
      ),
    );
  }
}
