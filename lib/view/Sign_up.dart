import 'package:flutter/material.dart';

import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_TeextFiled.dart';
import '../Comman_weigets/Comman_text.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  final Emailcontroler = TextEditingController();
  final Passwordcontroler = TextEditingController();
  final MobileNo = TextEditingController();
  final gloablekey = GlobalKey<FormState>();
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
              Center(
                child: Comman_Text(
                  text: "Sign Up",
                  fontsize: 30,
                  fontweight: FontWeight.w400,
                  color: Colors.black,
                ),
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
                  if (value!.isEmpty) {
                    return "Enter Name";
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
                hinttext: "Name",
                fillcolor: Colors.grey.shade300,
                filled: true,
              ),
              SizedBox(
                height: 20,
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
                keyboardType: TextInputType.number,
                controller: MobileNo,
                onChanged: (value) {
                  gloablekey.currentState!.validate();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Mobile No";
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
                hinttext: "Mobile No",
                maxLength: 10,
                sufficicon: MobileNo.text.length == 10
                    ? Icon(
                        Icons.check_circle,
                        color: Colors.orange,
                      )
                    : SizedBox(),
                fillcolor: Colors.grey.shade300,
                filled: true,
              ),
              SizedBox(
                height: 30,
              ),
              Comman_TexxtFiled(
                controller: MobileNo,
                onChanged: (value) {
                  gloablekey.currentState!.validate();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Mobile No";
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
                hinttext: "Address",
                sufficicon: MobileNo.text.length == 10
                    ? Icon(
                        Icons.check_circle,
                        color: Colors.orange,
                      )
                    : SizedBox(),
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
                hinttext: "Confirm Password",
                fillcolor: Colors.grey.shade300,
                filled: true,
              ),
              SizedBox(
                height: 30,
              ),
              Comman_Container(
                child: Center(
                  child: Comman_Text(
                    text: "Sign Up",
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
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Comman_Text(
                    text: "Already have an Account?",
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Comman_Text(
                    text: "Login",
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
