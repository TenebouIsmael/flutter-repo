import 'package:flutter/material.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
