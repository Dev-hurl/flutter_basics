import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isSwitched = false;
  bool isSwitchedLT = false;
  double isSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Toggle button')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeThumbColor: const Color.fromARGB(255, 2, 97, 175),
              activeTrackColor: Colors.blueAccent,
              inactiveThumbColor: Colors.blueGrey,
              inactiveTrackColor: Colors.blue,
            ),
            SizedBox(height: 24),
            SwitchListTile(
              title: Text('Notification',
              style: TextStyle(fontWeight: FontWeight.w600),),
              subtitle: Text('Toggle the button',
              style: TextStyle(fontSize: 12,),),
              value: isSwitchedLT,
              onChanged: (value) {
                setState(() {
                  isSwitchedLT = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
