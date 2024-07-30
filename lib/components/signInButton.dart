import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String Sign;
  final void Function()? onTap;
  const MyButton({super.key, required this.Sign, required this.onTap});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              widget.Sign,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
