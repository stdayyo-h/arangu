import 'package:flutter/material.dart';

import '../constants.dart';

class GradientButon extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const GradientButon({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: BoxConstraints(maxWidth: 350.0, minHeight: 35.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: kbuttonGradient,
          //borderRadius: BorderRadius.circular(80.0),
          boxShadow: [
            kLoginButtonBoxShadow,
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$text',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
