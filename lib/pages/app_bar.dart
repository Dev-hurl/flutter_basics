import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget {
  const ApplicationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        title: Text(
          'L A Y O U T S',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              // Action for settings button
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            // Action for menu button
          },
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        // Set Padding in a Card
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'This is the body of the application.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16.0),
              Image.asset('/images/seyi.jpg', width: 270, height: 480),
              SizedBox(height: 16.0),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Flutter App Bar Example',
                  style: TextStyle(fontSize: 20, 
                  fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
