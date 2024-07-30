import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final Function()? onTap;
  const SaveButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Save'),
          )),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
