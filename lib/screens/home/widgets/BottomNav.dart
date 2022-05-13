import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
            color: Colors.green,
            backgroundColor: Colors.white,
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.map, size: 30),
              Icon(Icons.add, size: 30),
              Icon(Icons.call_split, size: 30),
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
