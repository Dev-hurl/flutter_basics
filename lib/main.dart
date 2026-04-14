import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/onboarding.dart';
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
      home: const OnboardingPage(),
    );
  }
}
