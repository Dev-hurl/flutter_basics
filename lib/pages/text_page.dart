import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Text Widget Example'))),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('I am Learning', style: TextStyle(fontSize: 24)),

            SizedBox(height: 20),

            Text(
              'This is the learning page for Text Widget.',
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 20),

            Text(
              'This is the learning page for Text Widget.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
