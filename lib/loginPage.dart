import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internship_project/components/MyTextField.dart';
import 'package:internship_project/components/homepage.dart';
import 'package:internship_project/components/signInButton.dart';
import 'package:internship_project/components/squareTile.dart';
import 'package:internship_project/user.dart';
//import 'package:internship_project/textField.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  // final TextEditingController emailController;
  // final TextEditingController passwordController;

  LoginPage({
    super.key,
    required this.onTap,
    // required this.emailController,
    // required this.passwordController
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              //Welcome Back,You Have Benn Missed

              Text('Welcome Back ,You Have Been Missed'),

              const SizedBox(
                height: 25,
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
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 30,
              ),
              //forgot password??
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue[700], fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //Sign In button
              MyButton(
                Sign: 'Sign In',
                onTap: login,
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
                    'Not a member?',
                    style: TextStyle(fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 40,
              ),
              Text(
                'Or continue with ...',
                style: TextStyle(fontSize: 15),
              ),

              const SizedBox(
                height: 10,
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
                    width: 10,
                  ),
                  SquareTile(name: 'images/image2.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
