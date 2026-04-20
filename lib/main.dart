import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/2%20UI_State/MoreWidgets/text_form_field.dart';
//import 'package:flutter_basics/pages/1st%20Month_Foundation/Layout/list_tile.dart';
//import 'package:flutter_basics/pages/2nd%20Month_UI_State/MoreWidgets/badgee.dart';
//import 'package:flutter_basics/pages/2%20UI_State/Navigation/tab_bar_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Create BY BuildWithNuel
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Flutter Basics',
      home: const TextFormFieldWidget(),
    );
  }
}
