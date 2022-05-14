import 'package:arangu/Games/widgets/GameCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQuery
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Arangu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 24,
            color: Color(0XFF000000),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.question_mark,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              'Games',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 24,
                color: Color(0XFF000000),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GameCard(
                text: 'Visual crossword',
                img:
                    'https://linguapress.com/puzzles/answers/s194-xwd-art_answers.gif',
                para: 'new game',
                color: 0xff5AC671),
            GameCard(
                text: 'Visual crossword',
                img:
                    'https://linguapress.com/puzzles/answers/s194-xwd-art_answers.gif',
                para: 'new game',
                color: 0xffFF61A3),
            GameCard(
                text: 'Visual crossword',
                img:
                    'https://linguapress.com/puzzles/answers/s194-xwd-art_answers.gif',
                para: 'new game',
                color: 0xffE3B337),
          ]),
        ),
      ),
    );
  }
}
