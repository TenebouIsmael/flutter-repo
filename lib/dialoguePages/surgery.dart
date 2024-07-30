// import 'package:flutter/material.dart';
// // import 'package:internship_project/dialoguePages/saveButton.dart';
// import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

// class Surgery extends StatelessWidget {
//   const Surgery({super.key});

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
//                   'Surgery',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 backgroundColor: Colors.red,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Physicians Name',controller: PhysicianNameController,),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Title'),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Note'),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Date',controller: ,),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Time'),
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

class Surgery extends StatefulWidget {
  const Surgery({super.key});

  @override
  State<Surgery> createState() => _ConsultationState();
}

class _ConsultationState extends State<Surgery> {
  final TextEditingController physicianNameController = TextEditingController();
  final TextEditingController TitleController = TextEditingController();
  final TextEditingController NoteController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  void dispose() {
    physicianNameController.dispose();
    TitleController.dispose();
    NoteController.dispose();
    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  void saveData() {
    final data = {
      'physicianName': physicianNameController.text,
      'Title': TitleController.text,
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
                  'Surgery',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
              ),
              const SizedBox(height: 40),
              PhysicianTextfield(
                  data: 'Physician\'s Name',
                  controller: physicianNameController),
              const SizedBox(height: 10),
              PhysicianTextfield(data: 'Title', controller: TitleController),
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
