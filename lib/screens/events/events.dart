import 'package:arangu/screens/events/widgets/EventCard.dart';
import 'package:arangu/screens/events/widgets/Title.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class TrendingEventsPage extends StatefulWidget {
  const TrendingEventsPage({Key? key}) : super(key: key);

  @override
  State<TrendingEventsPage> createState() => _TrendingEventsPageState();
}

class _TrendingEventsPageState extends State<TrendingEventsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Heading(
                title: "Trending Events",
              ),
              CupertinoSearchTextField(
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: TextStyle(color: Colors.white),
                backgroundColor: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return EventCard(
                      name: "Kakkarishi",
                      place: "Kerala",
                      imageUrl:
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/%E0%B4%95%E0%B4%BE%E0%B4%95%E0%B5%8D%E0%B4%95%E0%B4%BE%E0%B4%B0%E0%B4%BF%E0%B4%B6%E0%B5%8D%E0%B4%B6%E0%B4%BF%E0%B4%A8%E0%B4%BE%E0%B4%9F%E0%B4%95%E0%B4%82_-_%E0%B4%85%E0%B4%B5%E0%B4%A4%E0%B4%B0%E0%B4%A3%E0%B4%82.jpg/1024px-%E0%B4%95%E0%B4%BE%E0%B4%95%E0%B5%8D%E0%B4%95%E0%B4%BE%E0%B4%B0%E0%B4%BF%E0%B4%B6%E0%B5%8D%E0%B4%B6%E0%B4%BF%E0%B4%A8%E0%B4%BE%E0%B4%9F%E0%B4%95%E0%B4%82_-_%E0%B4%85%E0%B4%B5%E0%B4%A4%E0%B4%B0%E0%B4%A3%E0%B4%82.jpg",
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
