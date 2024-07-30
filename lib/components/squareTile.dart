import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String name;
  const SquareTile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(25)),
      child: Image.asset(
        name,
        height: 70,
      ),
    );
  }
}
