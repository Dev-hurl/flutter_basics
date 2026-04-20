import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  const Badgee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('B A D G E'),
      ),
      body: Center(
        child: Badge(
          
          child: Icon(
            Icons.mail_rounded,
            size: 32,
          ),
        ),
      )
    );
  }
}