// import 'package:flutter/material.dart';

// class PhysicianTextfield extends StatelessWidget {
//   final String data;

//   PhysicianTextfield({
//     super.key,
//     required this.data,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: TextField(
//         decoration: InputDecoration(
//             hintText: data,
//             enabledBorder:
//                 OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.red),
//             )),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class PhysicianTextfield extends StatelessWidget {
  final String data;
  final TextEditingController? controller;

  const PhysicianTextfield({super.key, required this.data, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: data,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
