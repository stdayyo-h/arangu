import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  final String name;
  final String place;
  final String imageUrl;
  const CategoryCards(
      {Key? key,
      required this.name,
      required this.place,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl))),
          ),
        ),
        Positioned(
          child: Text(
            name,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          left: 10,
          bottom: 45,
        ),
        Positioned(
          child: Text(
            place,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.green),
          ),
          left: 10,
          bottom: 30,
        )
      ],
    );
  }
}
