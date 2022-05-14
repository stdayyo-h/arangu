import 'package:flutter/material.dart';

class SuggestedEventCard extends StatelessWidget {
  const SuggestedEventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.thrillophilia.com/image/upload/s--w5rDC_z1--/c_fill,h_775,q_auto,w_1600/f_auto,fl_strip_profile/v1/images/photos/000/141/711/original/1587388401_kaa3.jpg.jpg?1587388401"))),
        ),
        Positioned(
          child: Text(
            "Kakkarish",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          left: 10,
          bottom: 45,
        ),
        Positioned(
          child: Text(
            "Kerala",
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
