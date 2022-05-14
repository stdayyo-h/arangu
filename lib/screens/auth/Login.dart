import 'package:arangu/constants/colors.dart';
import 'package:arangu/screens/auth/onboarding.dart';
import 'package:arangu/screens/auth/widgets/GradientText.dart';
import 'package:arangu/screens/auth/widgets/LoginButton.dart';
import 'package:arangu/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'presentation/cubit/auth_cubit.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Image(
        image: AssetImage('assets/images/bottomimg.png'),
        width: double.infinity,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60),
            child: Center(
              child: Image(
                image: AssetImage('assets/images/AranguLogo2000.png'),
                width: 300,
              ),
            ),
          ),
          LoginButton(
            image: 'assets/images/google_logo.png',
            text: 'Sign In with Google',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OnBoarding()),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: GradientText("Read Terms of Serice",
                gradient: kgradientText,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center),
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 100),
          //   child: Positioned(
          //     bottom: 0.0,
          //     child: Image(
          //       image: AssetImage('assets/images/bottomimg.png'),
          //       width: double.infinity,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
