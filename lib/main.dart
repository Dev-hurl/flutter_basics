import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/1st%20Month_Foundation/Layout/grid_view.dart';
import 'package:flutter_basics/pages/1st%20Month_Foundation/Layout/lists_view.dart';
import 'package:flutter_basics/pages/1st%20Month_Foundation/Layout/stack_positioned.dart';
import 'package:flutter_basics/pages/2nd%20Month_UI_State/MoreWidgets/buttons.dart';
/*import 'package:flutter_basics/pages/layout.dart';*/

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
      home: const GridsView(),
    );
  }
}
