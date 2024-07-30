import 'package:flutter/material.dart';

class TrialPage extends StatelessWidget {
  const TrialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Drawer(
          child: Text('data'),
        ),
        AppBar(
          backgroundColor: Colors.grey,
        )
      ],
    ));
  }
}
