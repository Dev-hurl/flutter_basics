import 'package:flutter/material.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius:BorderRadiusGeometry.circular(24) ,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 400,
                  padding: EdgeInsets.all(30),
                  color: Colors.deepOrange[400],
                  child: Text(
                    'Page 2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}