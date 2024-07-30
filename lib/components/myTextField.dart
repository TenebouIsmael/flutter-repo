import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.hinttext,
      required this.controller,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey[50],
          filled: true,
          hintText: hinttext,
        ),
      ),
    );
  }
}
