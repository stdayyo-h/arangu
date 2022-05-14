import 'package:arangu/screens/Explore/SuggestedEvents.dart';
import 'package:arangu/screens/Gallery.dart';
import 'package:arangu/screens/crafts/crafts.dart';
import 'package:arangu/screens/events/TrendingCrafts.dart';
import 'package:arangu/screens/home/SuggestedEventML.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                SuggestedEventSectionML(),
                Text(
                  "Discover some crafts here",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 500,
                  child: CraftsPage(),
                )
              ],
            ),
            Gallery()
          ],
        ),
      ),
    ));
  }
}
