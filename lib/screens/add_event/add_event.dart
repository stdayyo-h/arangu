import 'package:arangu/api/apis.dart';
import 'package:arangu/screens/events/widgets/Title.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:arangu/api/all_events/all_events.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  void initState() {
    super.initState();
    getAllEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
