import 'package:flutter/material.dart';
//import 'package:internship_project/dialoguePages/saveButton.dart';
import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';

class Blood extends StatelessWidget {
  const Blood({super.key});

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
                  'Blood Glucose',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              PhysicianTextfield(
                data: 'Blood Glucose',
              ),
              const SizedBox(
                height: 20,
              ),
              PhysicianTextfield(data: 'Note'),
              const SizedBox(
                height: 20,
              ),
              PhysicianTextfield(data: 'Date'),
              const SizedBox(
                height: 20,
              ),
              PhysicianTextfield(data: 'Time'),
            ],
          ),
          // SaveButton(),
        ],
      ),
    );
  }
}
