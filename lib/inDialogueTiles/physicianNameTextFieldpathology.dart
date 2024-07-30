import 'package:flutter/material.dart';

class PathologyPhysicianTextField extends StatelessWidget {
  final String data;
  const PathologyPhysicianTextField({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
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
