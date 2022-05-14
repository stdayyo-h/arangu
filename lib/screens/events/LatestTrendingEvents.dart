import 'dart:convert';
import 'package:arangu/constants/colors.dart';
import 'package:arangu/screens/events/EventDetails.dart';
import 'package:arangu/screens/events/LatestTrendingEventsCard.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import '../crafts/CraftDetails.dart';

List<LatestTrendingEvents> craftFromJson(String str) =>
    List<LatestTrendingEvents>.from(
        json.decode(str).map((x) => LatestTrendingEvents.fromMap(x)));

class LatestTrendingEvents {
  LatestTrendingEvents(
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

  factory LatestTrendingEvents.fromMap(Map<String, dynamic> json) =>
      LatestTrendingEvents(
          id: json['id'],
          event_name: json['event_name'],
          event_description: json['event_description'],
          event_place: json['event_place'],
          latitude: json['latitude'],
          longitude: json['latitude'],
          rating: json['rating'],
          image: json['image']);
}

Future<List<LatestTrendingEvents>> fetchSuggestedEvents() async {
  final url = '${constants.BaseUrl}/events/all/';
  final response = await http.get(Uri.parse("${url}"));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed
        .map<LatestTrendingEvents>((json) => LatestTrendingEvents.fromMap(json))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class LatestTrendingEventPage extends StatefulWidget {
  const LatestTrendingEventPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LatestTrendingEventPage> createState() =>
      _SuggestedEventSectionMLState();
}

class _SuggestedEventSectionMLState extends State<LatestTrendingEventPage> {
  late Future<List<LatestTrendingEvents>> futureSuggestedEvents;
  @override
  void initState() {
    futureSuggestedEvents = fetchSuggestedEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<LatestTrendingEvents>>(
      future: futureSuggestedEvents,
      builder: (context, snapshot) {
        // print("${snapshot.data![1].image}");
        if (snapshot.hasData) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                        width: 10,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EventDetails(),
                                settings: RouteSettings(
                                    arguments: snapshot.data![index])));
                      },
                      child: LatestEventCard(
                        name: "${snapshot.data![index].event_name}",
                        place: "${snapshot.data![index].event_place}",
                        imageUrl:
                            "${constants.BaseUrl}${snapshot.data![index].image}",
                      ),
                    );
                  }),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
