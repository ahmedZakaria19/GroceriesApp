import 'package:flutter/material.dart';
import 'package:groceries_app/widgets/app_form_field.dart';

import 'package:groceries_app/widgets/app_button.dart';

class SignupScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/carrot.png')),
              SizedBox(height: 30),

              Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 26,
                  color: Color(0xFF030303),
                ),
              ),
              SizedBox(height: 15),

              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontWeight: FontWeight(400),
                  fontSize: 16,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Username",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 10),
              AppFormField(hintText: "Your Name"),
              SizedBox(height: 20),


              Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 10),
              AppFormField(hintText: "example@gmail.com"),
              SizedBox(height: 30),


              Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 10),
              AppFormField(
                hintText: "***********",
                obscureText: true,
                icon: Icon(Icons.visibility_off, color: Color(0xFF7C7C7C)),
              ),
              SizedBox(height: 30),

              Row(
                children: [
                  Text(
                    "By continuing you agree to our ",
                    style: TextStyle(fontWeight: FontWeight(400)),
                  ),
                  Text(
                    "Terms of Service",
                    style: TextStyle(
                      fontWeight: FontWeight(400),
                      color: Color(0xFF53B175),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Text("and ", style: TextStyle(fontWeight: FontWeight(400))),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontWeight: FontWeight(400),
                      color: Color(0xFF53B175),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              AppButton(text: "Signup"),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontWeight: FontWeight(600)),
                  ),
                  Text(
                    "Signup",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      color: Color(0xFF53B175),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
