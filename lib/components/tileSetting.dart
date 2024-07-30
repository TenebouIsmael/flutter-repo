import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final Icons;
  final String tiles;
  const SettingsTile({super.key, required this.Icons, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(
              Icons,
              size: 45,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              tiles,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
