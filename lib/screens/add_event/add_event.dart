import 'package:arangu/constants/colors.dart';
import 'package:arangu/screens/add_event/Widgets/gradient_button.dart';
import 'package:arangu/screens/crafts/CraftDetails.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Event Name',
                  style: kParaTextStyle,
                ),

                SizedBox(
                  height: 15,
                ),
                Text(
                  'Age',
                  style: kParaTextStyle,
                ),

                SizedBox(
                  height: 15,
                ),
                Text(
                  'Venue',
                  style: kParaTextStyle,
                ),

                SizedBox(
                  height: 15,
                ),
                Text(
                  'Date',
                  style: kParaTextStyle,
                ),
                DateTimePicker(
                  initialValue: '',

                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  // dateLabelText: 'Date',
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Event Type',
                  style: kParaTextStyle,
                ),

                SizedBox(
                  height: 20,
                ),
                Text(
                  'Add Image',
                  style: kParaTextStyle,
                ),
                // MyImagePicker(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Add a little Description',
                  style: kParaTextStyle,
                ),

                SizedBox(
                  height: 20,
                ),
                Center(
                    child: GradientButton3(
                  text: "Save",
                  onPressed: () {},
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
