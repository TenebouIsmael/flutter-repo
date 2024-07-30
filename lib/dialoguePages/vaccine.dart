// import 'package:flutter/material.dart';
// // import 'package:internship_project/dialoguePages/saveButton.dart';
// import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';
// import 'package:internship_project/inDialogueTiles/physicianTextFieldVaccine.dart';

// class Vaccine extends StatelessWidget {
//   const Vaccine({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               AppBar(
//                 title: Text(
//                   'Vaccine',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 backgroundColor: Colors.red,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),

//               //NAME
//               PhysicianTextfield(data: 'Name'),
//               const SizedBox(
//                 height: 20,
//               ),
//               VaccinePhysicianTextField(data: 'Name'),

//               //Note
//               const SizedBox(
//                 height: 20,
//               ),

//               //Date
//               VaccinePhysicianTextField(data: 'Date'),
//               const SizedBox(
//                 height: 20,
//               ),

//               //Time
//               VaccinePhysicianTextField(data: 'Time'),
//               const SizedBox(
//                 height: 30,
//               ),
//             ],
//           ),
//           SaveButton()
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
//import 'package:internship_project/dialoguePages/saveButton.dart';
import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

class Vaccine extends StatefulWidget {
  const Vaccine({super.key});

  @override
  State<Vaccine> createState() => _Vaccine();
}

class _Vaccine extends State<Vaccine> {
  final TextEditingController NameController = TextEditingController();
  final TextEditingController NoteController = TextEditingController();
  // final TextEditingController remarkController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  void dispose() {
    NameController.dispose();

    NoteController.dispose();
    // dateController.dispose();
    // timeController.dispose();
    super.dispose();
  }

  void saveData() {
    final data = {
      'Name': NameController.text,
      'Note': NoteController.text,
      'date': dateController.text,
      'time': timeController.text,
    };
    Navigator.pop(context, data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AppBar(
                title: Text(
                  'Vaccine',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
              ),
              const SizedBox(height: 40),
              PhysicianTextfield(data: 'Name', controller: NameController),
              const SizedBox(height: 10),
              PhysicianTextfield(data: 'Note', controller: NoteController),
              const SizedBox(height: 10),
              PhysicianTextfield(data: 'Date', controller: dateController),
              const SizedBox(height: 10),
              PhysicianTextfield(data: 'Time', controller: timeController),
              const SizedBox(height: 50),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: saveData,
              child: Text(
                'Save',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
