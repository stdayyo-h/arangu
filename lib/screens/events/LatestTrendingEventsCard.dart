import 'package:flutter/material.dart';

class LatestEventCard extends StatelessWidget {
  final String name;
  final String place;
  final String imageUrl;
  const LatestEventCard(
      {Key? key,
      required this.name,
      required this.place,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        Positioned(
          child: Text(
            name,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          left: 15,
          bottom: 60,
        ),
        Positioned(
          child: Text(
            place,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFFC1D9A3)),
          ),
          left: 15,
          bottom: 40,
        )
      ],
    );
  }
}
