import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:arangu/Games/widgets/GameCard.dart';

class GamesPlay extends StatelessWidget {
  const GamesPlay({Key? key}) : super(key: key);

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
        body: Column(
          children: [
            SingleChildScrollView(
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
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110,
                        height: 560,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Card(
                              // width: 80,
                              // height: 80,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              // color: Colors.white,
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 110,
                        height: 560,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Card(
                              // width: 80,
                              // height: 80,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              // color: Colors.white,
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Positioned(
                bottom: 0.0,
                // alignment: Alignment.bottomCenter,
                child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Color(0xff5AC671),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            // width: 80,
                            // height: 80,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            // color: Colors.white,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            // width: 80,
                            // height: 80,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            // color: Colors.white,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            // width: 80,
                            // height: 80,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            // color: Colors.white,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            // width: 80,
                            // height: 80,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            // color: Colors.white,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            // width: 80,
                            // height: 80,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            // color: Colors.white,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ]),
                      ],
                    )),
              ),
            ),
          ],
        ));
  }
}
