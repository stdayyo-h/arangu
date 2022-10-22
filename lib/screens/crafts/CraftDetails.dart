import 'package:arangu/screens/Map/map_card.dart';
import 'package:arangu/screens/ReviewCard.dart';
import 'package:arangu/screens/crafts/crafts.dart';
import 'package:arangu/screens/events/TrendingCrafts.dart';
import 'package:flutter/material.dart';

class CraftDetails extends StatelessWidget {
  const CraftDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(5.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22)),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage("${todo.image}")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${todo.craft_name}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text("${todo.craft_description}",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w200)),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: 400,
                        height: 500,
                        child: MapCardWidget(
                          name: "${todo.craft_name}",
                          latitude: todo.latitude!.toDouble(),
                          longitude: todo.longitude!.toDouble(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Reviews",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: SizedBox(
                    height: 100,
                    child: ListView.separated(
                      itemCount: 10,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        width: 10,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return ReviewCard();
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: GradientButton3(
                  text: "Add to Favourites",
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GradientButton3 extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const GradientButton3({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFC1D9A3), Color(0XFF35D893)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
