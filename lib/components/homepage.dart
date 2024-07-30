// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:internship_project/components/adding_page.dart';
// import 'package:internship_project/components/drawer.dart';
// import 'package:internship_project/components/myButtonTile.dart';

// import 'package:internship_project/dialoguePages/Radiology.dart';
// import 'package:internship_project/dialoguePages/blood.dart';
// import 'package:internship_project/dialoguePages/consultation.dart';

// import 'package:internship_project/dialoguePages/labTest.dart';
// import 'package:internship_project/dialoguePages/pathology.dart';
// import 'package:internship_project/dialoguePages/physicalExam.dart';
// import 'package:internship_project/dialoguePages/prescription.dart';
// import 'package:internship_project/dialoguePages/surgery.dart';
// import 'package:internship_project/dialoguePages/symptoms.dart';
// import 'package:internship_project/dialoguePages/vaccine.dart';
// import 'package:internship_project/dialoguePages/vitalInfo.dart';

// class MyHomePage extends StatefulWidget {
//   final String symp;
//   final String date;
//   final String time;
//   final String Diag;
//   final String Order;
//   final String Dose;
//   final String DatePres;
//   final String TimePres;

//   const MyHomePage({
//     required this.symp,
//     required this.date,
//     required this.time,
//     required this.DatePres,
//     required this.Diag,
//     required this.Dose,
//     required this.Order,
//     required this.TimePres,
//     super.key,
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   void toAddPage() {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => Add(),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: Text(
//           'Hospital',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       drawer: Mydrawer(),
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 190,
//           ),

//           Container(
//             height: 90,
//             width: 350,
//             decoration: BoxDecoration(
//                 color: Colors.grey, borderRadius: BorderRadius.circular(8)),
//             child: Column(
//               children: [
//                 Text(
//                   'Symptoms',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 Row(
//                   children: [
//                     Text('Symptoms:'),
//                     Text(widget.symp),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text('Date:'),
//                     Text(widget.date),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text('Time:'),
//                     Text(widget.time),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(
//             height: 200,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text('Search'),
//                           content: Container(
//                             height: 550,
//                             child: Column(
//                               children: [
//                                 MyButtonTile(
//                                   icon: Icons.person,
//                                   data: 'Consultation',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Consultation(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),

//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.edit_note,
//                                   data: 'Prescription',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Prescription(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.notes,
//                                   data: 'Symptoms',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => Symptoms()));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.manage_accounts_rounded,
//                                   data: 'Physical Exam',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => PhysicalExam(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.heart_broken,
//                                   data: 'Vital Info',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => VitalInfo(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.safety_check,
//                                   data: 'Vaccine',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Vaccine(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.library_add_sharp,
//                                   data: 'Lab Test',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => LabTest(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.bloodtype,
//                                   data: 'Blood Glucose',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Blood(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.ramen_dining_outlined,
//                                   data: 'Radiology',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Radiology(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.label,
//                                   data: 'Pathology',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Pathology(),
//                                         ));
//                                   },
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 MyButtonTile(
//                                   icon: Icons.person_3,
//                                   data: 'Surgery',
//                                   ontap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Surgery(),
//                                         ));
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                   child: Icon(
//                     Icons.add_circle_outline_rounded,
//                     size: 80,
//                     color: Colors.red,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:internship_project/components/adding_page.dart';
// import 'package:internship_project/components/drawer.dart';
// import 'package:internship_project/components/myButtonTile.dart';
// import 'package:internship_project/dialoguePages/symptoms.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Map<String, String>> symptomData = [];

//   void navigateToAddPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Add(),
//       ),
//     );
//   }

//   void navigateToSymptomsPage() async {
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Symptoms(),
//       ),
//     );

//     if (result != null && result is Map<String, String>) {
//       setState(() {
//         symptomData.add(result); // Add the result to the symptomData list
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: Text(
//           'Hospital',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       drawer: Mydrawer(),
//       body: Column(
//         children: [
//           const SizedBox(height: 190),
//           ...symptomData.map((data) {
//             return Container(
//               height: 90,
//               width: 350,
//               margin: EdgeInsets.only(bottom: 10),
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Symptoms',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     children: [
//                       Text('Symptoms: '),
//                       Text(data['symp'] ?? ''),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('Date: '),
//                       Text(data['date'] ?? ''),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text('Time: '),
//                       Text(data['time'] ?? ''),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           }).toList(),
//           const SizedBox(height: 200),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 GestureDetector(
//                   onTap: navigateToSymptomsPage,
//                   child: Icon(
//                     Icons.add_circle_outline_rounded,
//                     size: 80,
//                     color: Colors.red,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// //import 'package:internship_project/components/adding_page.dart';
// import 'package:internship_project/components/drawer.dart';
// //import 'package:internship_project/components/myButtonTile.dart';
// import 'package:internship_project/dialoguePages/consultation.dart';
// // import 'package:internship_project/dialoguePages/symptoms.dart';
// // import 'package:internship_project/dialoguePages/surgery.dart';
// // import other pages similarly

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Map<String, String>> dataEntries = [];

//   void navigateToPage(Widget page) async {
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => page,
//       ),
//     );

//     if (result != null && result is Map<String, String>) {
//       setState(() {
//         dataEntries.add(result); // Add the result to the dataEntries list
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: Text(
//           'Hospital',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       drawer: Mydrawer(),
//       body: Column(
//         children: [
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () =>
//                 navigateToPage(const Consultation()), // Similar for other pages
//             child: Text('Add Consultation'),
//           ),
//           // Add buttons for other pages similarly
//           Expanded(
//             child: ListView.builder(
//               itemCount: dataEntries.length,
//               itemBuilder: (context, index) {
//                 final data = dataEntries[index];
//                 return Container(
//                   height: 120,
//                   width: 350,
//                   margin: EdgeInsets.only(bottom: 10),
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Data Entry ${index + 1}',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       Text('Physician\'s Name: ${data['physicianName']}'),
//                       Text('Phone Number: ${data['phoneNumber']}'),
//                       Text('Remark: ${data['remark']}'),
//                       Text('Date: ${data['date']}'),
//                       Text('Time: ${data['time']}'),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
//import 'package:internship_project/components/adding_page.dart';
import 'package:internship_project/components/drawer.dart';
//import 'package:internship_project/components/myButtonTile.dart';
import 'package:internship_project/dialoguePages/consultation.dart';
import 'package:internship_project/dialoguePages/physicalExam.dart';
import 'package:internship_project/dialoguePages/symptoms.dart';
import 'package:internship_project/dialoguePages/surgery.dart';
import 'package:internship_project/dialoguePages/vitalInfo.dart';
//import 'package:internship_project/dialoguePages/vital_info.dart';
import 'package:internship_project/dialoguePages/vaccine.dart';
//import 'package:internship_project/dialoguePages/allergy.dart';
//import 'package:internship_project/dialoguePages/lab_test.dart';
import 'package:internship_project/dialoguePages/radiology.dart';
//import 'package:internship_project/dialoguePages/physical_exam.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> dataEntries = [];
  List<Map<String, String>> dataEntries2 = [];
  List<Map<String, String>> dataEntries3 = [];
  List<Map<String, String>> dataEntries4 = [];
  List<Map<String, String>> dataEntries5 = [];
  List<Map<String, String>> dataEntries6 = [];
  List<Map<String, String>> dataEntries7 = [];

  void navigateToPage(Widget page) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );

    if (result != null && result is Map<String, String>) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Save Data"),
            content: Text("Do you want to save this data?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    dataEntries
                        .add(result); // Add the result to the dataEntries list
                  });
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text("Save"),
              ),
            ],
          );
        },
      );
    }
  }

  void showOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          backgroundColor: Colors.grey[300],
          title: Text("Select Page"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                navigateToPage(const Consultation());
              },
              child: Row(
                children: [
                  Icon(Icons.person),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('Consultation'),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                navigateToPage(const Symptoms());
              },
              child: Row(
                children: [
                  Icon(Icons.notes_outlined),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('Symptoms'),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                navigateToPage(const Surgery());
              },
              child: Row(
                children: [
                  Icon(Icons.verified),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('Surgery'),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                navigateToPage(const VitalInfo());
              },
              child: Row(
                children: [
                  Icon(Icons.info),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('Vital Info'),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                navigateToPage(const Vaccine());
              },
              child: Row(
                children: [
                  Icon(Icons.medication),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('Vaccine'),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                navigateToPage(const Radiology());
              },
              child: Row(
                children: [
                  Icon(Icons.segment),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('Radiology'),
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                navigateToPage(const PhysicalExam());
              },
              child: Row(
                children: [
                  Icon(Icons.shield),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('Physical Exam'),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Hospital',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Mydrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),

          //Hospital Icon

          Icon(
            Icons.local_hospital,
            size: 300,
            color: Colors.red,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: dataEntries.length,
              itemBuilder: (context, index) {
                final data1 = dataEntries[index];
                return Container(
                  height: 120,
                  width: 350,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Entry ${index + 1}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(10)),
                          width: 400,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                        'Physician\'s Name: ${data1['physicianName']}'),
                                    Text(
                                        'Phone Number: ${data1['phoneNumber']}'),
                                    Text('Remark: ${data1['remark']}'),
                                    Text('Date: ${data1['date']}'),
                                    Text('Time: ${data1['time']}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: showOptionsDialog,
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
