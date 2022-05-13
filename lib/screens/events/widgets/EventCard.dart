import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String name;
  final String place;
  final String imageUrl;
  const EventCard(
      {Key? key,
      required this.name,
      required this.place,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double card_width = MediaQuery.of(context).size.width;
    // double card_height = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        width: 300,
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10,
              left: 12,
              child: Text(
                name,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 12,
              child: Text(
                place,
                style: TextStyle(fontSize: 12, color: Colors.greenAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
