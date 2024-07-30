// import 'package:flutter/material.dart';
// //import 'package:internship_project/dialoguePages/saveButton.dart';
// import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

// class PhysicalExam extends StatelessWidget {
//   const PhysicalExam({super.key});

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
//                   'Physical Exam ',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 backgroundColor: Colors.red,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Height'),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Weight'),
//               const SizedBox(
//                 height: 20,
//               ),
//               PhysicianTextfield(data: 'Date'),
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

class PhysicalExam extends StatefulWidget {
  const PhysicalExam({super.key});

  @override
  State<PhysicalExam> createState() => _ConsultationState();
}

class _ConsultationState extends State<PhysicalExam> {
  final TextEditingController physicianNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController remarkController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  void dispose() {
    physicianNameController.dispose();
    phoneNumberController.dispose();
    remarkController.dispose();
    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  void saveData() {
    final data = {
      'physicianName': physicianNameController.text,
      'phoneNumber': phoneNumberController.text,
      'remark': remarkController.text,
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
                  'Physical Exam',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
              ),
              const SizedBox(height: 40),
              PhysicianTextfield(
                  data: 'Physician\'s Name',
                  controller: physicianNameController),
              const SizedBox(height: 10),
              PhysicianTextfield(
                  data: 'Physician\'s Phone Number',
                  controller: phoneNumberController),
              const SizedBox(height: 10),
              PhysicianTextfield(
                  data: 'Physician\'s Remark', controller: remarkController),
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
