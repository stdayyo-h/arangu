import 'package:arangu/screens/Favourites/favourites.dart';
import 'package:arangu/screens/Gallery2.dart';
import 'package:arangu/screens/add_event/add_event.dart';
import 'package:arangu/screens/events/events.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1 / 3,
              child: Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_d3SP2vKOeGFVESn5rk6xnPiQ0naW2e-ldA&usqp=CAU',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Hi,Adam",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
            ),
            TabBar(
              unselectedLabelColor: Colors.green,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Add Event",
                ),
                Tab(
                  text: "Gallery",
                ),
                Tab(
                  text: "Favourites",
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [AddEvent(), Gallery2(), FavouritesPage()],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
