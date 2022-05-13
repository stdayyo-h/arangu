import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  const Heading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}
