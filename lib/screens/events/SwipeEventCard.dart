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
            bottom: 20,
            left: 25,
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 25,
            child: Text(
              place,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
