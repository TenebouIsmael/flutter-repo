import 'package:flutter/material.dart';

class MyButtonTile extends StatelessWidget {
  final icon;
  final String data;
  final Function()? ontap;

  MyButtonTile(
      {super.key, required this.icon, required this.data, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        //color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(
                width: 10,
              ),
              Text(data),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
