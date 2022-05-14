import 'package:flutter/material.dart';

class PillToggleButton extends StatelessWidget {
  const PillToggleButton({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                      color:
                          // (widget.selected) ? kPrimaryColor :
                          Colors.black)))),
          onPressed: () {
            // setState(() {
            //   widget.selected = !widget.selected;
            //   (this.widget.onPressed ?? () {})(widget.selected);
            // });
          },
          child: Container(
            child: Text(
              '$name',
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 13,
                color:
                    // (widget.selected) ? kPrimaryColor :
                    Colors.black,
              ),
            ),
          )),
    );
  }
}
