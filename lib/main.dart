import 'package:flutter/material.dart';
import 'package:sample_project/screens/home_screen/home_screen.dart';
import 'package:sample_project/utils/constant_heights.dart';
import 'package:sample_project/widgets/textWidget.dart';

/// 1.DataTypes -----------------
/// 2.operators -----------------
/// 3.variables
/// 4.loops
/// 5.Oops {
///      1. class :- Blue print of an object
///      2. Object :- Ex Building---------
///
///
///      }

void main() {
  runApp(
    MainScreen(),
  );
}

class MainScreen extends StatelessWidget {
  ///Constructor
  MainScreen();

  String name = "Sample";

  ///object or initialization
  HomeScreen homeScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF4874A5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Color(0XFFFFFFFF),
        ),
        title: Center(
          child: TextWidget(
            'Sign Up',
            ConstantHeights.heading3,
            FontWeight.bold,
            const Color(0XFFFFFFFF),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            // Center(
            //   child: Image.asset('assets/images/seamricon.png'),
            // ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Please fill your details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0XFF4874A6),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  textFieldWidget('First name'),
                  const SizedBox(
                    height: 15,
                  ),
                  textFieldWidget('Last name'),
                  const SizedBox(
                    height: 15,
                  ),
                  textFieldWidget('E-mail'),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFF404041)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Color(0XFFBFBFBF),
                          // Set your desired border color here
                          width: 1.0, // Set the width of the border
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Color(0XFFBFBFBF),
                          // Set the same border color for focused state
                          width: 1.0, // Set the same width for focused state
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.only(right: 24),
                      //   child: Image.asset('assets/images/passwordicon.png'),
                      //   // Add this line to specify the icon
                      //   // Icons.remove_red_eye_outlined, // Set your desired icon
                      //   // color: Colors.grey,
                      // ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Re-enter password',
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFF404041)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Color(0XFFBFBFBF),
                          // Set your desired border color here
                          width: 1.0, // Set the width of the border
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: const BorderSide(
                          color: Color(0XFFBFBFBF),
                          // Set the same border color for focused state
                          width: 1.0, // Set the same width for focused state
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.only(right: 24),
                      //   child: Image.asset('assets/images/passwordicon.png'),
                      //   // Add this line to specify the icon
                      //   // Icons.remove_red_eye_outlined, // Set your desired icon
                      //   // color: Colors.grey,
                      // ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4874A6),
                      padding: const EdgeInsets.only(left: 16),
                      fixedSize: Size(MediaQuery.of(context).size.width, 46),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textWidget(
                          'Sign Up',
                          FontWeight.bold,
                          18,
                          const Color(0xFFFFFFFF),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons
                                .arrow_forward, // Replace with your desired icon
                            color: Color(0xFFFFFFFF), // Icon color
                            size: 24, // Icon size
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textFieldWidget(String hintText) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Color(0XFF404041)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: const BorderSide(
            color: Color(0XFFBFBFBF), // Set your desired border color here
            width: 1.0, // Set the width of the border
          ),
        ),
        contentPadding: const EdgeInsets.only(left: 20.0),
      ),
    );
  }

  Widget textWidget(
      String name, FontWeight fontWeight, double fontSize, Color color) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: ConstantHeights.heading2,
        color: color,
      ),
    );
  }

  Widget containerWidget(
      String imagePath, Color containerColor, Color textColor) {
    return Column(
      children: [
        Container(
          color: containerColor,
          child: Image.asset(imagePath),
        ),
        Text(
          "Test",
          style: TextStyle(
            color: textColor,
            fontSize: ConstantHeights.heading2,
          ),
        ),
      ],
    );
  }
}
