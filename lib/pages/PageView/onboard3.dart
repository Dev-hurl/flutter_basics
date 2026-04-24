import 'package:flutter/material.dart';

class onboard3 extends StatelessWidget {
  const onboard3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      child: Padding(
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
            ],
          ),
        ),
      ),
    );
  }
}