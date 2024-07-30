import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internship_project/components/MyTextField.dart';
import 'package:internship_project/components/profilePage.dart';
import 'package:internship_project/components/signInButton.dart';
import 'package:internship_project/components/squareTile.dart';

class RegistrationPage extends StatefulWidget {
  final Function()? onTap;

  const RegistrationPage({super.key, required this.onTap});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  void login() {
    // String email = emailController.text;
    // String password = passwordController.text;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            email: emailController.text,
            FullName: passwordController.text,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //logo

            const SizedBox(
              height: 10,
            ),
            Icon(
              Icons.local_hospital_rounded,
              color: Colors.red,
              size: 200,
            ),

            const SizedBox(
              height: 20,
            ),

            Text('Let\'s create an account for you'),

            const SizedBox(
              height: 25,
            ),
            // Full Name

            MyTextField(
              hinttext: 'Full Name',
              controller: TextEditingController(),
              obscureText: false,
            ),

            const SizedBox(
              height: 10,
            ),

            // email address
            MyTextField(
              hinttext: 'Email',
              controller: emailController,
              obscureText: false,
            ),
            //Password

            const SizedBox(
              height: 10,
            ),

            MyTextField(
              hinttext: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            //  Confirm Password
            MyTextField(
              hinttext: 'Confirm Password',
              controller: confirmpasswordController,
              obscureText: false,
            ),

            const SizedBox(
              height: 40,
            ),
            //Sign In button
            MyButton(
              Sign: 'Sign Up',
              onTap: () {},
            ),
            //

            //Sign Up Button
            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Or continue with ...'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(name: 'images/image5.png'),
                const SizedBox(
                  width: 10,
                ),
                SquareTile(name: 'images/image4.png'),
                const SizedBox(
                  width: 10,
                ),
                SquareTile(name: 'images/image1.png'),
                const SizedBox(
                  width: 20,
                ),
                SquareTile(name: 'images/image2.png')
              ],
            )
          ],
        ),
      ),
    ));
  }
}
