import 'package:flutter/material.dart';

class SwipeEventCard extends StatelessWidget {
  final double Width;
  final double Height;
  final String name;
  final String place;
  final String imageUrl;

  const SwipeEventCard(
      {Key? key,
      required this.Height,
      required this.Width,
      required this.name,
      required this.place,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      // width: Width,
      // height: Height,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            fit: BoxFit.cover,
            height: 430,
          ),
          Positioned(
            bottom: 160,
            left: 25,
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 140,
            left: 25,
            child: Text(
              place,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
