import 'package:flutter/material.dart';
//import 'package:internship_project/components/listView.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppBar(
          backgroundColor: Colors.blue,
        ),
        const SizedBox(
          height: 190,
        ),
        Center(child: Text('Hey, Ismael')),
      ],
    ));
  }
}
