import 'package:flutter/material.dart';

class Badgee extends StatefulWidget {
  const Badgee({super.key});

  @override
  State<Badgee> createState() => _BadgeeState();
}

class _BadgeeState extends State<Badgee> {
  int badgeCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('B A D G E'),
      ),
      body: Center(
        child: Column(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Badge.count(
              count: badgeCount,
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(4),
              isLabelVisible: true,
              backgroundColor: Colors.deepOrange,
              textColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              child: Icon(
                Icons.mail_rounded,
                size: 48,
              ),
            ),
            OutlinedButton(onPressed: (){
              setState(() {
                badgeCount++;
              });
            }, 
            child: Text(
              'Increase Count',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ))
          ],
        ),
      )
    );
  }
}