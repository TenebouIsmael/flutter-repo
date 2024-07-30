import 'package:flutter/material.dart';
//import 'package:internship_project/components/homepage.dart';
import 'package:internship_project/dialoguePages/saveButton.dart';
import 'package:internship_project/hospital.dart';
// import 'package:internship_project/dialoguePages/saveButton.dart';
// import 'package:internship_project/inDialogueTiles/physicianNameTextField.dart';
import 'package:internship_project/inDialogueTiles/physicianNameTextFieldPres.dart';

class Prescription extends StatelessWidget {
  Prescription({super.key});

  @override
  Widget build(BuildContext context) {
    final DiagnosisController = TextEditingController();
    final OrderController = TextEditingController();
    final DoseController = TextEditingController();
    final DateController = TextEditingController();
    final TimeCntroller = TextEditingController();
    void BackToHome() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HospitalTiles()));
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AppBar(
                title: Text(
                  'Prescription',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              //Diagnosis
              PrescriptionTextfield(
                data: 'Diagnosis',
                controller: DiagnosisController,
              ),
              const SizedBox(
                height: 10,
              ),
              //Order
              PrescriptionTextfield(
                data: 'Order',
                controller: OrderController,
              ),
              const SizedBox(
                height: 10,
              ),
              PrescriptionTextfield(
                data: 'Dose',
                controller: DoseController,
              ),
              const SizedBox(
                height: 10,
              ),
              PrescriptionTextfield(
                data: 'Date',
                controller: DateController,
              ),
              const SizedBox(
                height: 10,
              ),
              PrescriptionTextfield(
                data: 'Time',
                controller: TimeCntroller,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
          SaveButton(onTap: BackToHome),
        ],
      ),
    );
  }
}
