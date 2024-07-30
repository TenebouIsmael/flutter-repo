import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final icon;
  final String name;
  final Function()? onPressed;
  DrawerTile(
      {super.key,
      required this.icon,
      required this.name,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                //logo
                Icon(
                  icon,
                  size: 20,
                ),
                //Name Of Tile
                const SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
