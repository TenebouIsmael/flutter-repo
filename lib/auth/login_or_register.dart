import 'package:flutter/material.dart';
import 'package:internship_project/components/signUpPage.dart';
import 'package:internship_project/loginPage.dart';

class Login_or_register extends StatefulWidget {
  const Login_or_register({super.key});

  @override
  State<Login_or_register> createState() => _Login_or_registerState();
}

class _Login_or_registerState extends State<Login_or_register> {
  //Initially Show login Page
  bool showloginPage = true;

  //Then toggle between login and registration page

  void togglePage() {
    setState(() {
      showloginPage = !showloginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginPage) {
      return LoginPage(
        onTap: togglePage,
        // emailController: '',
        // passwordController: ,
      );
    } else {
      return RegistrationPage(
        onTap: togglePage,
      );
    }
  }
}
