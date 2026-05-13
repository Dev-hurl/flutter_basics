import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/2%20UI/MoreWidgets/text_form_field.dart';
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
      //title: 'Learning Flutter Basics',
      home: const TextFormFieldWidget(),
      /*theme: ThemeData.dark(
        /*primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),*/
      ),*/
    );
  }
}
