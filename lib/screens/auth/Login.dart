import 'package:arangu/constants/colors.dart';
import 'package:arangu/screens/auth/widgets/GradientText.dart';
import 'package:arangu/screens/auth/widgets/LoginButton.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LoginButton(
              image: 'assets/images/google_log.png',
              text: "Sign in with Google",
              onPressed: () {})
        ],
      ),
    );
  }
}
