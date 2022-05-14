import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_d3SP2vKOeGFVESn5rk6xnPiQ0naW2e-ldA&usqp=CAU%27',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
