import 'package:flutter/material.dart';

class SymptomsTextField extends StatelessWidget {
  final String data;
  final controller;
  const SymptomsTextField(
      {super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: data,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            )),
      ),
    );
  }
}
