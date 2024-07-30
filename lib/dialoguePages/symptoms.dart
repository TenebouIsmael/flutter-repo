// //import 'dart:js_interop';

// import 'package:flutter/material.dart';
// //import 'package:internship_project/components/homepage.dart';
// import 'package:internship_project/dialoguePages/saveButton.dart';
// import 'package:internship_project/hospital.dart';
// //import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';
// import 'package:internship_project/inDialogueTiles/physicianNameTextfieldSymp.dart';

// class Symptoms extends StatefulWidget {
//   const Symptoms({super.key});

//   @override
//   State<Symptoms> createState() => _SymptomsState();
// }

// class _SymptomsState extends State<Symptoms> {
//   @override
//   Widget build(BuildContext context) {
//     final sympController = TextEditingController();
//     final dateSympController = TextEditingController();
//     final timeSympController = TextEditingController();

//     void Hospital() {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => HospitalTiles()));
//     }

//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               AppBar(
//                 title: Text(
//                   'Symptoms',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 backgroundColor: Colors.red,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SymptomsTextField(
//                 data: 'Symptoms',
//                 controller: sympController,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SymptomsTextField(
//                 data: 'Date',
//                 controller: dateSympController,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SymptomsTextField(
//                 data: 'Time',
//                 controller: timeSympController,
//               ),
//             ],
//           ),
//           SaveButton(onTap: Hospital),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
//import 'package:internship_project/dialoguePages/saveButton.dart';
import 'package:internship_project/inDialogueTiles/physicianNameTextfieldSymp.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({super.key});

  @override
  State<Symptoms> createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  final TextEditingController sympController = TextEditingController();
  final TextEditingController dateSympController = TextEditingController();
  final TextEditingController timeSympController = TextEditingController();

  @override
  void dispose() {
    sympController.dispose();
    dateSympController.dispose();
    timeSympController.dispose();
    super.dispose();
  }

  void saveData() {
    final data = {
      'symp': sympController.text,
      'date': dateSympController.text,
      'time': timeSympController.text,
    };
    Navigator.pop(context, data); // Pass data back to the previous screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Symptoms',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              SymptomsTextField(
                data: 'Symptoms',
                controller: sympController,
              ),
              const SizedBox(height: 20),
              SymptomsTextField(
                data: 'Date',
                controller: dateSympController,
              ),
              const SizedBox(height: 20),
              SymptomsTextField(
                data: 'Time',
                controller: timeSympController,
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: saveData,
              child: Text(
                'Save',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
