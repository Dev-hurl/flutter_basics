import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  Color hoverColor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'B U T T O N S',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //route
              },
              child: Text(
                'Press Me',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                //
              },
              child: Text(
                'Elevated Button',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 24),
            IconButton(
              onPressed: () {
                //route
              },
              icon: Icon(Icons.add),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
