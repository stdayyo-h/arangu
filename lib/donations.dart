import 'package:flutter/material.dart';

class DonationsPage extends StatelessWidget {
  const DonationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Donate US",
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
