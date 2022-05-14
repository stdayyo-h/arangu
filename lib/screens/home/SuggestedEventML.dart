import 'dart:convert';
import 'package:arangu/constants/colors.dart';
import 'package:arangu/screens/events/EventDetails.dart';
import 'package:http/http.dart' as http;
import 'package:arangu/screens/Explore/SuggestedEvents.dart';
import 'package:flutter/material.dart';

List<SuggestedEvents> craftFromJson(String str) => List<SuggestedEvents>.from(
    json.decode(str).map((x) => SuggestedEvents.fromMap(x)));

class SuggestedEvents {
  SuggestedEvents(
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

  factory SuggestedEvents.fromMap(Map<String, dynamic> json) => SuggestedEvents(
      id: json['id'],
      event_name: json['event_name'],
      event_description: json['event_description'],
      event_place: json['event_place'],
      latitude: json['latitude'],
      longitude: json['latitude'],
      rating: json['rating'],
      image: json['image']);
}

Future<List<SuggestedEvents>> fetchSuggestedEvents() async {
  final url = '${constants.BaseUrl}/events/trending?keywords=temple hindu';
  final response = await http.get(Uri.parse("${url}"));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed
        .map<SuggestedEvents>((json) => SuggestedEvents.fromMap(json))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class SuggestedEventSectionML extends StatefulWidget {
  const SuggestedEventSectionML({
    Key? key,
  }) : super(key: key);

  @override
  State<SuggestedEventSectionML> createState() =>
      _SuggestedEventSectionMLState();
}

class _SuggestedEventSectionMLState extends State<SuggestedEventSectionML> {
  late Future<List<SuggestedEvents>> futureSuggestedEvents;
  @override
  void initState() {
    futureSuggestedEvents = fetchSuggestedEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SuggestedEvents>>(
      future: futureSuggestedEvents,
      builder: (context, snapshot) {
        // print("${snapshot.data![1].image}");
        if (snapshot.hasData) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .90,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 3),
                itemBuilder: (context, index) {
                  return SuggestedEventCard(
                    name: "${snapshot.data![index].event_name}",
                    place: "${snapshot.data![index].event_place}",
                    imageUrl:
                        "${constants.BaseUrl}${snapshot.data![index].image}",
                  );
                }),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
