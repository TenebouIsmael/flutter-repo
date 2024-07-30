// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:internship_project/dialoguePages/saveButton.dart';
// //import 'package:internship_project/dialoguePages/saveButton.dart';
// import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

// class Consultation extends StatelessWidget {
//   Consultation({super.key});

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
//                   'Consultation',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 backgroundColor: Colors.red,
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               PhysicianTextfield(
//                 data: 'Physician\'s Name',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               PhysicianTextfield(
//                 data: 'Physician\'s Phone Number',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               PhysicianTextfield(
//                 data: 'Physician\'s Remark',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               PhysicianTextfield(
//                 data: 'Date',
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               PhysicianTextfield(
//                 data: 'Time',
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 70,
//           ),
//           SaveButton(
//             onTap: () {},
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';
// import 'package:internship_project/dialoguePages/saveButton.dart';

// class Consultation extends StatefulWidget {
//   const Consultation({super.key});

//   @override
//   _ConsultationState createState() => _ConsultationState();
// }

// class _ConsultationState extends State<Consultation> {
//   final TextEditingController physicianNameController = TextEditingController();
//   final TextEditingController phoneNumberController = TextEditingController();
//   final TextEditingController remarkController = TextEditingController();
//   final TextEditingController dateController = TextEditingController();
//   final TextEditingController timeController = TextEditingController();

//   @override
//   void dispose() {
//     physicianNameController.dispose();
//     phoneNumberController.dispose();
//     remarkController.dispose();
//     dateController.dispose();
//     timeController.dispose();
//     super.dispose();
//   }

//   void saveData() {
//     final data = {
//       'physicianName': physicianNameController.text,
//       'phoneNumber': phoneNumberController.text,
//       'remark': remarkController.text,
//       'date': dateController.text,
//       'time': timeController.text,
//     };
//     Navigator.pop(context, data); // Pass data back to the previous screen
//   }

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
//                   'Consultation',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 backgroundColor: Colors.red,
//               ),
//               const SizedBox(height: 40),
//               PhysicianTextfield(
//                 data: 'Physician\'s Name',
//                 controller: physicianNameController,
//               ),
//               const SizedBox(height: 10),
//               PhysicianTextfield(
//                 data: 'Physician\'s Phone Number',
//                 controller: phoneNumberController,
//               ),
//               const SizedBox(height: 10),
//               PhysicianTextfield(
//                 data: 'Physician\'s Remark',
//                 controller: remarkController,
//               ),
//               const SizedBox(height: 10),
//               PhysicianTextfield(
//                 data: 'Date',
//                 controller: dateController,
//               ),
//               const SizedBox(height: 10),
//               PhysicianTextfield(
//                 data: 'Time',
//                 controller: timeController,
//               ),
//               const SizedBox(height: 50),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: ElevatedButton(
//               onPressed: saveData,
//               child: Text('Save'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
//import 'package:internship_project/dialoguePages/saveButton.dart';
import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

class Consultation extends StatefulWidget {
  const Consultation({super.key});

  @override
  State<Consultation> createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {
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
    final data1 = {
      'physicianName': physicianNameController.text,
      'phoneNumber': phoneNumberController.text,
      'remark': remarkController.text,
      'date': dateController.text,
      'time': timeController.text,
    };
    Navigator.pop(context, data1);
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
                  'Consultation',
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
