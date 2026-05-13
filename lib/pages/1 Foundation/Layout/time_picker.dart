import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  static TimeOfDay _timeOfDay = TimeOfDay(hour: 4, minute: 30);

  void timePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      helpText: 'Check time',
      cancelText: 'Discard',
      confirmText: 'Save',
    ).then( (value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_timeOfDay.format(context).toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FilledButton(
                onPressed: () {
                  timePicker();
                },
                child: Text(
                  'Select Time',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
