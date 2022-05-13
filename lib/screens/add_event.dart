import 'package:arangu/screens/widgets/imagepicker.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/gradient_button.dart';
import '../widgets/input_box.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Arangu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              fontSize: 24,
              color: Color(0XFF000000),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_mark,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                InputBox(
                  onchangedFn: () {},
                  //  (_) => context
                  // .read<ReguserBloc>().add(
                  //       FullNameChanged(fullName: _),
                  //     ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Age',
                  style: kParaTextStyle,
                ),
                InputBox(
                  onchangedFn: () {},
                  //  (_) =>
                  //     context.read<ReguserBloc>().add(AgeChanged(age: _)),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Venue',
                  style: kParaTextStyle,
                ),
                InputBox(
                  onchangedFn: () {},
                  //  (_) => context
                  //     .read<ReguserBloc>()
                  //     .add(FullNameChanged(fullName: _)
                  //     ),
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
                InputBox(
                  onchangedFn: () {},
                  //  (_) => context
                  //     .read<ReguserBloc>()
                  //     .add(FullNameChanged(fullName: _)
                  //     ),
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
                InputBox(
                  onchangedFn: () {},
                  //  (_) => context
                  //     .read<ReguserBloc>()
                  //     .add(FullNameChanged(fullName: _)
                  //     ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: GradientButon(
                    text: "Save",
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
