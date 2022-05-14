import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final Function onchangedFn;

  const InputBox({Key? key, required this.onchangedFn}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onchangedFn(value),
      decoration: InputDecoration(
        // label: Text('asdf'),
        // labelText: 'Nickname'
        // ,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        isDense: true,
        border: OutlineInputBorder(),

        // labelText: 'Enter Name Here',
        // hintText: 'Enter Name Here',
      ),
    );
  }
}
