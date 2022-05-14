import 'package:arangu/api/apis.dart';
import 'package:arangu/screens/crafts/crafts.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCardWidget extends StatefulWidget {
  const MapCardWidget(
      {Key? key,
      required this.name,
      required this.latitude,
      required this.longitude})
      : super(key: key);
  final String name;
  final double latitude;

  final double longitude;
  @override
  _MapCardWidgetState createState() => _MapCardWidgetState();
}

class _MapCardWidgetState extends State<MapCardWidget> {
  final Map<String, Marker> _markers = {};
  late Future<List<Post>> future_events;
  var offices = <Map>[];

  Future<void> _onMapCreated(GoogleMapController controller) async {
    offices.add({
      'name': 'Krishnanattam',
      'latitude': 9.516,
      'longitude': 76.522,
    });
    print("Print Here");
    print(widget.name);
    print(widget.latitude);
    print(widget.longitude);
    setState(() {
      _markers.clear();

      // for (final event in await future_events) {
      //   print("Printing Here");
      //   print(event.event_name.toString());
      //   print(event.latitude!);
      //   print(event.longitude!);
      //   final marker = Marker(
      //     markerId: MarkerId(event.event_name.toString()),
      //     position: LatLng(event.latitude!, event.longitude!),
      //     infoWindow: InfoWindow(
      //       title: event.event_name.toString(),
      //       snippet: event.event_description.toString(),
      //     ),
      //   );
      //   _markers[event.event_name.toString()] = marker;
      // }

      for (final office in offices) {
        final marker = Marker(
          markerId: MarkerId(office['name']),
          position: LatLng(office['latitude'], office['longitude']),
          infoWindow: InfoWindow(
            title: office['name'],
            snippet: office['name'],
          ),
        );
        _markers[office['name']] = marker;
      }
    });
  }

  @override
  void initState() {
    future_events = fetchPost();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
          target: LatLng(9.9816, 76.2999),
          zoom: 7,
        ),
        markers: _markers.values.toSet(),
      ),
    );
  }
}
