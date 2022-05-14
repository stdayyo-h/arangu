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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100.0, top: 100),
            child: Center(
              child: Image(
                image: AssetImage('assets/images/Group23.png'),
                width: double.infinity,
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
        ],
      ),
    );
  }
}
