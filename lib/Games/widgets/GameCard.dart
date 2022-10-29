import 'package:arangu/Games/games_play.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameCard extends StatelessWidget {
  const GameCard(
      {Key? key,
      required this.text,
      required this.img,
      required this.para,
      required this.color})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final int color;
  final String text;
  final String img;
  final String para;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GamesPlay()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 220,
        child: Card(
          color: Color(color),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Image.asset(
                  img,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                text,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  color: Color(0XFF000000),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.share),
                              ),
                            ]),
                      ),
                      Text(para),
                    ]),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
