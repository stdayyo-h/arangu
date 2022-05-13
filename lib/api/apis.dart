import 'dart:convert';

import 'package:arangu/api/all_events/all_events.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

final url = "http://c449-106-216-134-155.ngrok.io/events/all/";
Future<http.Response> getAllEvents() {
  final response = http.get(Uri.parse(url));

  return response;
}

// class EventsApi {
//   static Future<List<Event>> getAllEvents() {
//     final url = 'http://c449-106-216-134-155.ngrok.io/events/all/';
//     final response = http.get(Uri.parse(url));

//     final body = json.decode(response.bo);
//     return body.map
//   }
// }
class Event {
  final int id;
  final String eventName;
  final String eventDescription;
  final String eventPlace;
  final double latitude;
  final double longitude;
  final double rating;
  final String image;

  Event(
      {required this.id,
      required this.eventName,
      required this.eventPlace,
      required this.eventDescription,
      required this.latitude,
      required this.longitude,
      required this.rating,
      required this.image});

  // factory Event.fromJson(Map<String, dynamic> json) {
  //   return Event(
  //     id: json['id'] ,
  //     eventName: json['event_name'] ,
  //     eventDescription: json['event_description'] ,
  //     eventPlace: json['event_place'],
  //     latitude: (json['latitude'])?.toDouble(),
  //     longitude: (json['longitude'])?.toDouble(),
  //     rating: (json['rating'])?.toDouble(),
  //     image: json['image'],

  //   );
  // }
}
