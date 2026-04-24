import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/PageView/onboard1.dart';
import 'package:flutter_basics/pages/PageView/onboard2.dart';
import 'package:flutter_basics/pages/PageView/onboard3.dart';

class MainOnboard extends StatefulWidget {
  const MainOnboard ({super.key});

  @override
  State<MainOnboard> createState() => _MainOnboardState();
}

class _MainOnboardState extends State<MainOnboard> {
  late PageController _pageController;

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                padding: EdgeInsets.all(30),
                color: Colors.deepOrange[400],
              ),
              PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                children: [
                  Onboard1(),
                  Onboard2(),
                  Onboard3(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}