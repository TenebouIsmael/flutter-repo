import 'package:flutter/material.dart';
import 'package:internship_project/auth/login_or_register.dart';
import 'package:internship_project/user.dart';
import 'package:provider/provider.dart';
//import 'package:internship_project/auth/login_or_register.dart';
//import 'package:internship_project/loginPage.dart';
//import 'package:internship_project/components/signUpPage.dart';
//import 'package:internship_project/components/signUpPage.dart';
//import 'package:internship_project/loginPage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => UserProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         home: Login_or_register()
         );
  }
}
