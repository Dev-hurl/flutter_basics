import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/1%20Foundation/Layout/carousel.dart';
import 'package:flutter_basics/pages/1%20Foundation/Layout/stack_positioned.dart';
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
      home: const CarouselWidget(),
    );
  }
}
