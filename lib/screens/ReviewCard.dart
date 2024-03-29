import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.grey[700], borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDJzEaxLN-jGRYYUO65pWu7Q9GXoNt4LUSSA&usqp=CAU',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "Almira Khan",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 15,
                width: 25,
                child: Center(child: Text("5.0")),
                decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(5)),
              ),
              Spacer(),
              Text("2d ago"),
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ))
            ],
          ),
        ],
      ),
    );
  }
}
