import 'dart:ui';

import 'package:arangu/screens/home/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../bloc/reguser_bloc.dart';
// import '../../../../Utils/constants/dummy_data.dart';
import '../../constants/colors.dart';
import 'widgets/profile_icon_button.dart';
import 'widgets/gradient_button.dart';
import 'widgets/pill_toggle_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List interestsDummyData = ["", "", ""];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.question_mark),
              color: Colors.black,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's set your public ",
                  style: kHeaderTextStyle,
                ),
                Text(
                  "profle ",
                  style: kHeaderTextStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Let’s now set up your public profile. This is the only data that will be visible to the public",
                  style: kParaTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(child: ProfileIconButton()),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'NickName',
                  style: kParaTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  onChanged: (nickname) => context,
                  decoration: InputDecoration(
                    // label: Text('asdf'),
                    // labelText: 'Nickname'
                    // ,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    isDense: true,
                    border: OutlineInputBorder(),

                    // labelText: 'Enter Name Here',
                    // hintText: 'Enter Name Here',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Interests',
                  style: kParaTextStyle,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: interestsDummyData
                      .map((e) => PillToggleButton(name: e))
                      .toList(),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GradientButon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    text: "Next",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
