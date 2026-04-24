import 'package:flutter/material.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3 ({super.key});

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
                color: Colors.deepOrange[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}