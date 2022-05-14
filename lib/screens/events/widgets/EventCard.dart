import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

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
              child: BorderedText(
                strokeWidth: 2.0,
                strokeColor: Color(0xFFC1D9A3),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 14,
              child: BorderedText(
                child: Text(
                  place,
                  style: TextStyle(
                    color: Color(0xFFC1D9A3),
                    fontSize: 8.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
