import 'package:arangu/constants/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  // const LoginButton({ Key? key }) : super(key: key);

  final Function() onPressed;
  final String text, image;
  const LoginButton({
    required this.image,
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: kbuttonGradient,
          borderRadius: BorderRadius.circular(80.0),
          boxShadow: [
            kLoginButtonBoxShadow,
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              width: 10,
              height: 10,
              image: AssetImage(
                image,
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
