import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_TeextFiled.dart';
import '../Comman_weigets/Comman_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final gloablekey = GlobalKey<FormState>();
  final Emailcontroler = TextEditingController();
  final Passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: gloablekey,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Comman_Text(
                text: "Login",
                fontsize: 30,
                fontweight: FontWeight.w400,
                color: Colors.black,
              ),
              SizedBox(
                height: 15,
              ),
              Comman_Text(
                text: "Add your details to login",
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
                hinttext: "Your Email",
                fillcolor: Colors.grey.shade300,
                filled: true,
              ),
              SizedBox(
                height: 30,
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
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (gloablekey.currentState!.validate()) {}
                },
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
                height: 30,
              ),
              Comman_Text(
                text: "Forgot your password?",
                fontsize: 18,
                fontweight: FontWeight.w400,
                color: Colors.grey,
              ),
              SizedBox(
                height: 50,
              ),
              Comman_Text(
                text: "or Login With",
                fontsize: 18,
                fontweight: FontWeight.w400,
                color: Colors.grey,
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  if (gloablekey.currentState!.validate()) {}
                },
                child: Comman_Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/image/facebook.png',
                          height: 25,
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Comman_Text(
                          text: "Login with Facebook",
                          fontsize: 18,
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  BorderRadius: BorderRadius.circular(40),
                  height: height * 0.07,
                  width: width,
                  color: Color(0xff367FC0),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (gloablekey.currentState!.validate()) {}
                },
                child: Comman_Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/image/google.png',
                          height: 25,
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Comman_Text(
                          text: "Login with Google",
                          fontsize: 18,
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  BorderRadius: BorderRadius.circular(40),
                  height: height * 0.07,
                  width: width,
                  color: Color(0xffDD4B39),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Comman_Text(
                    text: "Don't have an Account?",
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  Comman_Text(
                    text: "Sign Up",
                    fontsize: 18,
                    fontweight: FontWeight.bold,
                    color: Color(0xffFC6011),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
