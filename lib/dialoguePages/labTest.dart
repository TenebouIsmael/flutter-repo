//

import 'package:flutter/material.dart';
//import 'package:internship_project/dialoguePages/saveButton.dart';
import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

class LabTest extends StatefulWidget {
  const LabTest({super.key});

  @override
  State<LabTest> createState() => _ConsultationState();
}

class _ConsultationState extends State<LabTest> {
  final TextEditingController physicianNoteController = TextEditingController();
  final TextEditingController TestController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  //final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  void dispose() {
    physicianNoteController.dispose();
    TestController.dispose();

    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  void saveData() {
    final data = {
      'physicianName': physicianNoteController.text,
      'phoneNumber': TestController.text,
      'remark': TestController.text,
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
                  'Consultation',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
              ),
              const SizedBox(height: 40),
              PhysicianTextfield(
                  data: 'Physician\'s Name',
                  controller: physicianNoteController),
              const SizedBox(height: 10),
              PhysicianTextfield(
                  data: 'Physician\'s Phone Number',
                  controller: TestController),
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
