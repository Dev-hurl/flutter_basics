import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/2%20UI_State/MoreWidgets/text_form_field.dart';
import 'package:flutter_basics/pages/2%20UI_State/MoreWidgets/tool_tip_snack_bar.dart';
import 'package:flutter_basics/pages/PageView/main_onboard.dart';

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
      home: const MainOnboard(),
    );
  }
}
