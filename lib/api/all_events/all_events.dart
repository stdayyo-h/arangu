import 'package:json_annotation/json_annotation.dart';

part 'all_events.g.dart';

@JsonSerializable()
class AllEvents {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'event_name')
  String? eventName;
  @JsonKey(name: 'event_description')
  String? eventDescription;
  @JsonKey(name: 'event_place')
  String? eventPlace;
  @JsonKey(name: 'latitude')
  double? latitude;
  @JsonKey(name: 'longtitude')
  double? longitude;
  @JsonKey(name: 'rating')
  double? rating;
  @JsonKey(name: 'image')
  String? image;

  AllEvents({
    this.id,
    this.eventName,
    this.eventDescription,
    this.eventPlace,
    this.latitude,
    this.longitude,
    this.rating,
    this.image,
  });

  factory AllEvents.fromJson(Map<String, dynamic> json) {
    return _$AllEventsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllEventsToJson(this);
}
