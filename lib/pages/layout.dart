import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('My Widget Example'))),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
    
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(40),
                color: Colors.deepPurpleAccent,
              ),
              child: Center(
                child: Text(
                'This is a container',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20),
                ),
              ),
            ),

            SizedBox(width: 20), // Spacer between the two containers

            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.deepPurple,
              ),
              
              child: Center(
                child: Text(
                  'Hello, Flutter!',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}