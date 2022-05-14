import 'package:arangu/CategoryCards.dart';
import 'package:arangu/screens/Explore/SuggestedEvents.dart';
import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What are you Looking for ?",
          style: TextStyle(fontSize: 30),
        ),
        Text("Start your cultural adventure"),
        Column(
          children: [
            CategoryCards(
                name: "Trending Events",
                place: "Kerala",
                imageUrl:
                    "https://www.keralatourism.org/images/artforms/categoryimages/ritual_art20131115151713.jpg"),
            CategoryCards(
                name: "Discovery",
                place: "Andhra Pradesh",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIph49hdO3hdznxfderA30TcouPhwG_80YeQ&usqp=CAU"),
            CategoryCards(
                name: "Games and ",
                place: "Kerala",
                imageUrl:
                    "https://i.pinimg.com/originals/68/5d/b0/685db050c4878156dec268010f9d4228.jpg")
          ],
        )
      ],
    );
  }
}
