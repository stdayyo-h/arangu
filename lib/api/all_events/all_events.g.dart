// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllEvents _$AllEventsFromJson(Map<String, dynamic> json) => AllEvents(
      id: json['id'] as int?,
      eventName: json['event_name'] as String?,
      eventDescription: json['event_description'] as String?,
      eventPlace: json['event_place'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$AllEventsToJson(AllEvents instance) => <String, dynamic>{
      'id': instance.id,
      'event_name': instance.eventName,
      'event_description': instance.eventDescription,
      'event_place': instance.eventPlace,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'rating': instance.rating,
      'image': instance.image,
    };
