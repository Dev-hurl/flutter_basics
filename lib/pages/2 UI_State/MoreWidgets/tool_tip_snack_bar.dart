import 'package:flutter/material.dart';

class ToolTipSnackBar extends StatefulWidget {
  const ToolTipSnackBar({super.key});

  @override
  State<ToolTipSnackBar> createState() => _ToolTipSnackBarState();
}

class _ToolTipSnackBarState extends State<ToolTipSnackBar> {
  final TextEditingController _snackBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 24,
            children: [
              TextField(
                controller: _snackBarController,
                cursorWidth: 2,
                showCursor: true,
                cursorRadius: Radius.circular(12),
              ),
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(_snackBarController.text),
                      action: SnackBarAction(
                        label: 'Undo' , onPressed: (){
                        //
                      }),
                    ),
                  );
                },
                child: Text(
                  'Show Text',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              Tooltip(
                message: "Remember to press the button",
                constraints:BoxConstraints(
                  minHeight: 100,
                  maxHeight: 200,
                  minWidth: double.maxFinite,
                  maxWidth: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
