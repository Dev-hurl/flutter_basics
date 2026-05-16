import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final bool readonly;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    this.readonly = true,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //readOnly: readonly,
      showCursor: true,
      scrollPhysics: NeverScrollableScrollPhysics(),
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12, color: Color(0xff808080)),
        prefixIcon: Icon(icon),
        prefixIconColor: Color(0xff464AE5),
        filled: true,
        fillColor: Color(0xffEAEAEA),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffF2F2F2),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xff464AE5),
          ),
        ),
        
      ),
    );
  }
}
