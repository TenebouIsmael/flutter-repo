import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            title: Text(
              'FeedBack',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
          ),
          const SizedBox(height: 50),
          Text(
            'We would love your feedback',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
                  hintText: '(Optional)',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)))),
        ],
      ),
    );
  }
}
