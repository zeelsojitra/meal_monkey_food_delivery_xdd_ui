import 'package:flutter/material.dart';


import '../Comman_weigets/Comman_Container.dart';
import '../Comman_weigets/Comman_text.dart';

class Otp_Screen extends StatefulWidget {
  const Otp_Screen({Key? key}) : super(key: key);

  @override
  State<Otp_Screen> createState() => _Otp_ScreenState();
}

class _Otp_ScreenState extends State<Otp_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Comman_Text(
              text: "We have sent an OTP to\n          your Mobile",
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
          // OtpTextField(
          //   numberOfFields: 4,
          //   borderColor: Color(0xFF512DA8),
          //   showFieldAsBox: true,
          //   filled: true,
          //   fillColor: Colors.grey.shade300,
          //   onCodeChanged: (String code) {},
          //   onSubmit: (String verificationCode) {
          //     showDialog(
          //         context: context,
          //         builder: (context) {
          //           return AlertDialog(
          //             title: Text("Verification Code"),
          //             content: Text('Code entered is $verificationCode'),
          //           );
          //         });
          //   }, // end onSubmit
          // ),
          SizedBox(
            height: 80,
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
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Comman_Text(
                text: "Didn't Receive?",
                fontsize: 18,
                fontweight: FontWeight.w400,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Comman_Text(
                text: "Click Here",
                fontsize: 18,
                fontweight: FontWeight.bold,
                color: Color(0xffFC6011),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
