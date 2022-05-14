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

// class AddEvent extends StatelessWidget {
//   const AddEvent({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 30,
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   'Event Name',
//                   style: kParaTextStyle,
//                 ),
//                 InputBox(
//                   onchangedFn: () {},
//                   //  (_) => context
//                   // .read<ReguserBloc>().add(
//                   //       FullNameChanged(fullName: _),
//                   //     ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   'Age',
//                   style: kParaTextStyle,
//                 ),
//                 InputBox(
//                   onchangedFn: () {},
//                   //  (_) =>
//                   //     context.read<ReguserBloc>().add(AgeChanged(age: _)),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   'Venue',
//                   style: kParaTextStyle,
//                 ),
//                 InputBox(
//                   onchangedFn: () {},
//                   //  (_) => context
//                   //     .read<ReguserBloc>()
//                   //     .add(FullNameChanged(fullName: _)
//                   //     ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   'Date',
//                   style: kParaTextStyle,
//                 ),
//                 DateTimePicker(
//                   initialValue: '',

//                   firstDate: DateTime(2000),
//                   lastDate: DateTime(2100),
//                   // dateLabelText: 'Date',
//                   onChanged: (val) => print(val),
//                   validator: (val) {
//                     print(val);
//                     return null;
//                   },
//                   onSaved: (val) => print(val),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'Event Type',
//                   style: kParaTextStyle,
//                 ),
//                 InputBox(
//                   onchangedFn: () {},
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'Add Image',
//                   style: kParaTextStyle,
//                 ),
//                 Row(
//                   children: [
//                     Text('Pick Gallery '),
//                     IconButton(
//                       onPressed: (() {}),
//                       icon: Icon(
//                         Icons.image_outlined,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//                 // MyImagePicker(),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'Add a little Description',
//                   style: kParaTextStyle,
//                 ),
//                 InputBox(
//                   onchangedFn: () {},
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Center(
//                   child: GradientButon(
//                     text: "Save",
//                     onPressed: () {},
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController venueController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  // final imageController = TextEditingController();

  // Boolean variable for CircularProgressIndicator.
  bool visible = false;

  Future webCall() async {
    // Showing CircularProgressIndicator using State.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String event_name = eventNameController.text.toString();
    String event_place = venueController.text.toString();
    String event_description = descriptionController.text.toString();

    var url =
        'http://fde8-2401-4900-4c6d-373f-1cf7-221e-e919-cb91.ngrok.io/events/all/';
    var data = {
      "event_name": "asheraattam",
      "event_description":
          "pha pule aattam is a temple art in Kerala, India. It is a dance drama and presents the story of Krishna in a series of eight plays and was created by Manaveda (1585–1658 AD), the then Zamorin Raja of Calicut in northern Kerala.[1] The eight plays are: Avataram, Kaliyamardanam, Rasakrida, Kamsavadham, Swayamvaram, Banayuddham, Vividavadham and Swargarohanam.[2] It survives in its glory at the Guruvayur Sri Krishna temple (Thrissur district, Kerala, India).",
      "event_time": "06:05:56",
      "event_place": "kotarasur",
      "latitude": 10.56,
      "longitude": 76.2144,
      "rating": 4.9,
      "reviews": "asheratam is nice, It is very nice"
    };
    // 'event_name': event_name,
    // 'event_place': event_name,
    // 'event_description': event_description,
    var response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application./json; charset=UTF-8',
      },
      body: json.encode(data),
    );
    var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      setState(() {
        visible = false;
      });
    }

    // Showing Alert Dialog with Response JSON.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("message"),
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
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Fill All Information in Form',
                  style: TextStyle(fontSize: 22))),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: eventNameController,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Enter Event Name '),
              )),
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


// Future<http.Response> (String title) {
//   return http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );
// }
