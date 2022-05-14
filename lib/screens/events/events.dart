import 'package:arangu/screens/events/SwipeEventCard.dart';
import 'package:arangu/screens/events/widgets/EventCard.dart';
import 'package:arangu/screens/events/widgets/Title.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

// class TrendingEventsPage extends StatefulWidget {
//   const TrendingEventsPage({Key? key}) : super(key: key);

//   @override
//   State<TrendingEventsPage> createState() => _TrendingEventsPageState();
// }

// class _TrendingEventsPageState extends State<TrendingEventsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Heading(
//                 title: "Trending Events",
//               ),
//               CupertinoSearchTextField(
//                 prefixIcon: Icon(
//                   CupertinoIcons.search,
//                   color: Colors.grey,
//                 ),
//                 suffixIcon: Icon(
//                   CupertinoIcons.xmark_circle_fill,
//                   color: Colors.grey,
//                 ),
//                 style: TextStyle(color: Colors.white),
//                 backgroundColor: Colors.grey.withOpacity(0.3),
//               ),
//               SizedBox(height: 10),
//               Expanded(
//                 child: ListView.separated(
//                   itemCount: 5,
//                   separatorBuilder: (BuildContext context, int index) =>
//                       const Divider(),
//                   itemBuilder: (BuildContext context, int index) {
//                     return EventCard(
//                       name: "Kakkarishi",
//                       place: "Kerala",
//                       imageUrl:
//                           "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/%E0%B4%95%E0%B4%BE%E0%B4%95%E0%B5%8D%E0%B4%95%E0%B4%BE%E0%B4%B0%E0%B4%BF%E0%B4%B6%E0%B5%8D%E0%B4%B6%E0%B4%BF%E0%B4%A8%E0%B4%BE%E0%B4%9F%E0%B4%95%E0%B4%82_-_%E0%B4%85%E0%B4%B5%E0%B4%A4%E0%B4%B0%E0%B4%A3%E0%B4%82.jpg/1024px-%E0%B4%95%E0%B4%BE%E0%B4%95%E0%B5%8D%E0%B4%95%E0%B4%BE%E0%B4%B0%E0%B4%BF%E0%B4%B6%E0%B5%8D%E0%B4%B6%E0%B4%BF%E0%B4%A8%E0%B4%BE%E0%B4%9F%E0%B4%95%E0%B4%82_-_%E0%B4%85%E0%B4%B5%E0%B4%A4%E0%B4%B0%E0%B4%A3%E0%B4%82.jpg",
//                     );
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
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
        Heading(title: "Trending Events"),
        SizedBox(
          height: 10,
        ),
        SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            items: [
              SwipeEventCard(
                  Height: 50,
                  Width: 50,
                  name: "Kathakali",
                  place: "Kerala",
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg"),
              SwipeEventCard(
                  Height: 50,
                  Width: 50,
                  name: "Kathakali",
                  place: "Kerala",
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg"),
              SwipeEventCard(
                  Height: 50,
                  Width: 50,
                  name: "Kathakali",
                  place: "Kerala",
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg"),
              SwipeEventCard(
                  Height: 50,
                  Width: 50,
                  name: "Kathakali",
                  place: "Kerala",
                  imageUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/9/9e/Shree_Krishnan_by_FACT_Jayadeva_Varma.jpg")
            ]),
        Container(
          height: 250,
          color: Colors.black,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              PlacesCircleStackWidget(),
              CircleAvatar(
                radius: 50,
              )
            ],
          ),
        )
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
      children: [],
    );
  }
}
