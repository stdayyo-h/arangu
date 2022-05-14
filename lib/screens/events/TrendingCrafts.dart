import 'dart:convert';

import 'package:arangu/screens/events/widgets/EventCard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../crafts/CraftDetails.dart';

List<Crafts> craftFromJson(String str) =>
    List<Crafts>.from(json.decode(str).map((x) => Crafts.fromMap(x)));

class Crafts {
  Crafts(
      {required this.id,
      required this.event_name,
      required this.event_place,
      required this.event_description,
      required this.latitude,
      required this.longitude,
      required this.rating,
      required this.image});

  final int id;
  final String? event_name;
  final String? event_description;
  final String? event_place;
  final double? latitude;
  final double? longitude;
  final double? rating;
  final String? image;

  factory Crafts.fromMap(Map<String, dynamic> json) => Crafts(
      id: json['id'],
      event_name: json['event_name'],
      event_description: json['event_description'],
      event_place: json['event_place'],
      latitude: json['latitude'],
      longitude: json['latitude'],
      rating: json['rating'],
      image: json['image']);
}

Future<List<Crafts>> fetchPost() async {
  final url =
      'http://fde8-2401-4900-4c6d-373f-1cf7-221e-e919-cb91.ngrok.io/events/all/';
  final response = await http.get(Uri.parse("${url}"));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Crafts>((json) => Crafts.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class TrendingCrafts extends StatefulWidget {
  const TrendingCrafts({Key? key}) : super(key: key);

  @override
  State<TrendingCrafts> createState() => _CraftsPageState();
}

class _CraftsPageState extends State<TrendingCrafts> {
  late Future<List<Crafts>> futurePost;
  @override
  void initState() {
    futurePost = fetchPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Crafts>>(
      future: futurePost,
      builder: (context, snapshot) {
        // print("${snapshot.data![1].image}");
        if (snapshot.hasData) {
          return ListView.separated(
            separatorBuilder: (_, index) => Divider(),
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CraftDetails(),
                        settings:
                            RouteSettings(arguments: snapshot.data![index])));
              },
              child: Container(
                  child: EventCard(
                name: "${snapshot.data![index].event_name}",
                place: "${snapshot.data![index].event_place}",
                imageUrl: "${snapshot.data![index].image}",
              )),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
