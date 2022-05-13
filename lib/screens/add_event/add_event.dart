import 'package:arangu/screens/events/widgets/Title.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Heading(title: "Add An Event")],
      ),
    );
  }
}
