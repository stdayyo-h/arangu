import 'package:arangu/screens/add_event/add_event.dart';
import 'package:arangu/screens/events/events.dart';
import 'package:arangu/screens/home/widgets/BottomNav.dart';
import 'package:arangu/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pages = [
      TrendingEventsPage(),
      AddEvent(),
      SplashScreen(),
      TrendingEventsPage(),
      SplashScreen(),
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
