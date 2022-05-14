import 'package:arangu/api/apis.dart';
import 'package:arangu/screens/crafts/crafts.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final Map<String, Marker> _markers = {};
  late Future<List<Post>> future_events;
  var offices = <Map>[];

  Future<void> _onMapCreated(GoogleMapController controller) async {
    offices.add(
        {'name': 'Krishnanattam', 'latitude': 10.5276, 'longitude': 76.2144});
    offices.add(
        {'name': 'Pettathullal', 'latitude': 9.5916, 'longitude': 76.5222});
    offices.add({
      'name': 'Kakarishi Nadakam',
      'latitude': 8.5241,
      'longitude': 76.9366
    });
    offices
        .add({'name': 'Kathakali', 'latitude': 9.0056, 'longitude': 76.7831});

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
      appBar: AppBar(
        title: const Text('Trending Events Locations'),
        backgroundColor: Colors.green[700],
      ),
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
