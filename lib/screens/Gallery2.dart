import 'package:flutter/material.dart';

class Gallery2 extends StatelessWidget {
  var size, height, width;
  Gallery2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: 200,
          decoration:
              BoxDecoration(image: DecorationImage(image: NetworkImage(""))),
          width: double.infinity,
        ),
        Row(
          children: [
            Container(
              height: 150,
              color: Colors.black,
              width: width / 2,
            ),
            Container(
              height: 150,
              color: Colors.blue,
              width: width / 2,
            ),
          ],
        )
      ]),
    );
  }
}
