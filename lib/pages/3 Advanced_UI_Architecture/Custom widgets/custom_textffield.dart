import 'package:flutter/material.dart';

class CustomTextFFieldWidget extends StatefulWidget {
  const CustomTextFFieldWidget({
    super.key,
    required TextEditingController passwordController,
    required emailController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  State<CustomTextFFieldWidget> createState() => _CustomTextFFieldWidgetState();
}

class _CustomTextFFieldWidgetState extends State<CustomTextFFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._passwordController,
      //focusNode: FocusNode(),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        prefixIconColor: Colors.deepOrange,
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Colors.black87,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        hintText: 'Enter Your Password',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: Colors.deepOrange),
        ),
      ),
    );
  }
}
