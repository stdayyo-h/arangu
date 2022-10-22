import 'dart:convert';
// import 'dart:html';

import 'package:arangu/constants/colors.dart';
import 'package:arangu/screens/add_event/Widgets/gradient_button.dart';
import 'Widgets/input_box.dart';
import 'package:arangu/screens/crafts/CraftDetails.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController venueController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  
  bool visible = false;

  Future webCall() async {
    
    setState(() {
      visible = true;
    });

    
    print("Printing Here");
    String event_name = eventNameController.text.toString();
    print(event_name);
    String event_place = venueController.text.toString();
    print(event_place);
    String event_description = descriptionController.text.toString();
    print(event_description);

    var url = "${constants.BaseUrl}/events/all/";
    var data = {
      "event_name": event_name,
      "event_description": event_description,
      "event_time": "06:05:56",
      "event_place": event_place,
      "latitude": 10.56,
      "longitude": 76.2144,
      "rating": 4.9,
      "reviews": "It is very nice"
    };
    var response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(data),
    );
    var message = jsonDecode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        print("Print Here");
        print(message);
        visible = false;
      });
    } else {
      print("Print Here");
      print(message);
    }
    setState(() {
      print("Print Here");
      print(message);
      visible = false;
    });
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("success!"),
          actions: <Widget>[
            ElevatedButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: eventNameController,
              autocorrect: true,
              decoration: InputDecoration(hintText: 'Enter Event Name '),
            ),
          ),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: venueController,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Enter Venue'),
              )),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: descriptionController,
                autocorrect: true,
                decoration:
                    InputDecoration(hintText: 'Add a little description'),
              )),
          GradientButon(
            onPressed: webCall,
            text: 'Submit',
          ),
          Visibility(
              visible: visible,
              child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator())),
        ],
      ),
    )));
  }
}
