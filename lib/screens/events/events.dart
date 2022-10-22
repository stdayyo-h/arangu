import 'package:arangu/donations.dart';
import 'package:arangu/screens/events/LatestTrendingEvents.dart';
import 'package:arangu/screens/events/SwipeEventCard.dart';
import 'package:arangu/screens/events/widgets/EventCard.dart';
import 'package:arangu/screens/events/widgets/Title.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:fluttericon/typicons_icons.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:arangu/constants/colors.dart';

class TrendingEventsPage extends StatefulWidget {
  const TrendingEventsPage({Key? key}) : super(key: key);

  @override
  State<TrendingEventsPage> createState() => _TrendingEventsPageState();
}

class _TrendingEventsPageState extends State<TrendingEventsPage> {
  int counter = 4;
  @override
  Widget build(BuildContext context) {
    SwipeableCardSectionController _cardController =
        SwipeableCardSectionController();

    return Column(
      children: [
        Text(
          'Trending Events',
          style: kHeaderTextStyle,
        ),
        // Heading(title: "Trending Events"
        // ),
        SizedBox(
          height: 10,
        ),
        LatestTrendingEventPage(),
        Spacer(),
        // SwipeableCardsSection(
        //     cardController: _cardController,
        //     context: context,
        //     items: [
        //       SwipeEventCard(
        //           Height: 50,
        //           Width: 50,
        //           name: "Kathakali",
        //           place: "Kerala",
        //           imageUrl:
        //               "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg"),
        //       SwipeEventCard(
        //           Height: 50,
        //           Width: 50,
        //           name: "Kathakali",
        //           place: "Kerala",
        //           imageUrl:
        //               "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg"),
        //       SwipeEventCard(
        //           Height: 50,
        //           Width: 50,
        //           name: "Kathakali",
        //           place: "Kerala",
        //           imageUrl:
        //               "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg"),
        //       SwipeEventCard(
        //           Height: 50,
        //           Width: 50,
        //           name: "Kathakali",
        //           place: "Kerala",
        //           imageUrl:
        //               "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg")
        //     ]),

        Container(
          height: 200,
          color: Colors.grey[700],
          child: Column(
            children: [
              Text(
                "Finding Places to visit",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 6,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 10,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return PlacesCircleStackWidget();
                  },
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFFC1D9A3), width: 2),
                ),
                onPressed: () {},
                child: Text(
                  "Read More",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PlacesCircleStackWidget extends StatelessWidget {
  const PlacesCircleStackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: Image.network(
            'https://sargaalaya.in/wp-content/uploads/2018/11/22-2.jpg',
            width: 100,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 35,
          bottom: -10,
          child: Icon(
            Typicons.map,
            size: 25,
            color: Color(0xFFC1D9A3),
          ),
        )
      ],
    );
  }
}
