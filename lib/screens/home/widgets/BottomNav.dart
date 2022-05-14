import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return CurvedNavigationBar(
            index: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            color: Color(0xFFC1D9A3),
            backgroundColor: Colors.white,
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(
                Typicons.compass,
                size: 30,
              ),
              Icon(
                Typicons.location,
                size: 30,
              ),
              Icon(Typicons.dribbble),
              ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_d3SP2vKOeGFVESn5rk6xnPiQ0naW2e-ldA&usqp=CAU',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          );
        });
  }
}
