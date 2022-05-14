import 'package:arangu/Games/Games.dart';
import 'package:arangu/screens/Explore/Explore.dart';
import 'package:arangu/screens/add_event/add_event.dart';
import 'package:arangu/screens/auth/Profile.dart';
import 'package:arangu/screens/crafts/crafts.dart';
import 'package:arangu/screens/events/events.dart';
import 'package:arangu/screens/home/widgets/BottomNav.dart';
import 'package:arangu/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:arangu/screens/Map/map.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pages = [
      TrendingEventsPage(),

      ExploreScreen(),
      MapWidget(),
      GamesPage(),
      // CraftsPage(),

      ProfilePage()
    ];
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
