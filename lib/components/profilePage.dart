// import 'package:flutter/material.dart';
// import 'package:internship_project/user.dart';
// import 'package:provider/provider.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     User? user = Provider.of<UserProvider>(context).user;
//  body: Column(
//       children: [
//         AppBar(
//           title: Text('Profile Page'),
//           backgroundColor: Colors.blue,
//         ),
//         const SizedBox(
//           height: 70,
//         ),
//         Icon(
//           Icons.person,
//           size: 100,
//         ),
//         const SizedBox(
//           height: 20,
//         ),

//         // Email
//         Text('Email : ${user?.Email} '),
//         //FullName

//         const SizedBox(
//           height: 20,
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:internship_project/user.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(
      {super.key, required String email, required String FullName});

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            Icon(
              Icons.person,
              size: 100,
            ),
            const SizedBox(height: 20),
            // Email
            Text('Email : ${user?.email ?? "No email available"}'),
            const SizedBox(height: 20),
            // FullName
            Text('Full Name: ${user?.fullName ?? "No name available"}'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
