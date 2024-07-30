// import 'package:flutter/material.dart';
// import 'package:internship_project/dialoguePages/saveButton.dart';
// import 'package:internship_project/inDialogueTiles/PhysicianNameTextFieldVitalInfo.dart';
// // import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

// class VitalInfo extends StatelessWidget {
//   const VitalInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           AppBar(
//             title: Text(
//               'Vital Info',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             backgroundColor: Colors.red,
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           VitalInfoPhysicianTextField(data: 'Temperature'),
//           const SizedBox(
//             height: 20,
//           ),
//           VitalInfoPhysicianTextField(data: 'Heart Pulse'),
//           const SizedBox(
//             height: 20,
//           ),
//           VitalInfoPhysicianTextField(data: 'Sp02'),
//           const SizedBox(
//             height: 20,
//           ),
//           VitalInfoPhysicianTextField(data: 'Blood Pressure Systolic'),
//           const SizedBox(
//             height: 20,
//           ),
//           VitalInfoPhysicianTextField(data: 'Blood Pressure Diastolic'),
//           const SizedBox(
//             height: 20,
//           ),
//           VitalInfoPhysicianTextField(data: 'Date'),
//           const SizedBox(
//             height: 20,
//           ),
//           VitalInfoPhysicianTextField(data: ' Time'),
//         ],
//       ),
//       SaveButton();
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:internship_project/inDialogueTiles/PhysicianNameTextFieldVitalInfo.dart';
// import 'package:internship_project/dialoguePages/saveButton.dart';

// class VitalInfo extends StatefulWidget {
//   const VitalInfo({super.key});

//   @override
//   _VitalInfoState createState() => _VitalInfoState();
// }

// class _VitalInfoState extends State<VitalInfo> {
//   final TextEditingController temperatureController = TextEditingController();
//   final TextEditingController heartPulseController = TextEditingController();
//   final TextEditingController sp02Controller = TextEditingController();
//   final TextEditingController bloodPressureSystolicController = TextEditingController();
//   final TextEditingController bloodPressureDiastolicController = TextEditingController();
//   final TextEditingController dateController = TextEditingController();
//   final TextEditingController timeController = TextEditingController();

//   @override
//   void dispose() {
//     temperatureController.dispose();
//     heartPulseController.dispose();
//     sp02Controller.dispose();
//     bloodPressureSystolicController.dispose();
//     bloodPressureDiastolicController.dispose();
//     dateController.dispose();
//     timeController.dispose();
//     super.dispose();
//   }

//   void saveData() {
//     final data = {
//       'temperature': temperatureController.text,
//       'heartPulse': heartPulseController.text,
//       'sp02': sp02Controller.text,
//       'bloodPressureSystolic': bloodPressureSystolicController.text,
//       'bloodPressureDiastolic': bloodPressureDiastolicController.text,
//       'date': dateController.text,
//       'time': timeController.text,
//     };
//     Navigator.pop(context, data); // Pass data back to the previous screen
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           AppBar(
//             title: Text(
//               'Vital Info',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             backgroundColor: Colors.red,
//           ),
//           const SizedBox(height: 20),
//           VitalInfoPhysicianTextField(data: 'Temperature', controller: temperatureController),
//           const SizedBox(height: 20),
//           VitalInfoPhysicianTextField(data: 'Heart Pulse', controller: heartPulseController),
//           const SizedBox(height: 20),
//           VitalInfoPhysicianTextField(data: 'Sp02', controller: sp02Controller),
//           const SizedBox(height: 20),
//           VitalInfoPhysicianTextField(data: 'Blood Pressure Systolic', controller: bloodPressureSystolicController),
//           const SizedBox(height: 20),
//           VitalInfoPhysicianTextField(data: 'Blood Pressure Diastolic', controller: bloodPressureDiastolicController),
//           const SizedBox(height: 20),
//           VitalInfoPhysicianTextField(data: 'Date', controller: dateController),
//           const SizedBox(height: 20),
//           VitalInfoPhysicianTextField(data: 'Time', controller: timeController),
//           const SizedBox(height: 20),
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

class VitalInfo extends StatefulWidget {
  const VitalInfo({super.key});

  @override
  State<VitalInfo> createState() => _ConsultationState();
}

class _ConsultationState extends State<VitalInfo> {
  final TextEditingController TemperatureController = TextEditingController();
  final TextEditingController HeartPulseController = TextEditingController();
  final TextEditingController SpO2Controller = TextEditingController();
  final TextEditingController BloodPressureController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  void dispose() {
    TemperatureController.dispose();
    HeartPulseController.dispose();
    BloodPressureController;
    SpO2Controller.dispose();
    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  void saveData() {
    final data = {
      'Temperature': TemperatureController.text,
      'Heart Pulse': HeartPulseController.text,
      'Sp02': SpO2Controller,
      'Blood Pressure': BloodPressureController.text,
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
                  'Vital Info',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
              ),
              const SizedBox(height: 40),
              PhysicianTextfield(
                  data: 'Temperature', controller: TemperatureController),
              const SizedBox(height: 10),
              PhysicianTextfield(
                  data: 'Heart Pulse', controller: HeartPulseController),
              const SizedBox(height: 10),
              PhysicianTextfield(data: 'Sp02', controller: SpO2Controller),
              const SizedBox(height: 10),
              PhysicianTextfield(
                data: 'Blood Pressure',
                controller: BloodPressureController,
              ),
              const SizedBox(
                height: 10,
              ),
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
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
