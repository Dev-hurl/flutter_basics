import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {

  final TextEditingController _inputController = TextEditingController();

  @override
  void dispose(){
    _inputController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Alert Dialog')),
      body: Center(
        child: FilledButton(
          onPressed: () {
            showDialog(
              fullscreenDialog: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  titlePadding: EdgeInsets.all(12),
                  contentPadding: EdgeInsets.all(12),
                  //icon: Icon(Icons.lightbulb_circle_rounded),
                  title: Text('Alert Dialog',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                  ),
                  content: SizedBox(
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 24,
                      children: [
                        Text(
                          'This is an Alert Dialog',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextField(
                          controller:_inputController,
                          decoration: InputDecoration(
                            hintText: 'Enter your name',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green,width: 1,),
                              borderRadius: BorderRadius.circular(12),
                            )
                          ),
                        ),
                      ]
                    ),
                  ),
                  actions: [
                    FilledButton(
                      onPressed: () {
                        //action
                      },
                      child: Text('Submit'),
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Open Alert dialog'),
        ),
      ),
    );
  }
}
