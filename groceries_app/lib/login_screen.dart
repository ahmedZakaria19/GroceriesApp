import 'package:flutter/material.dart';
import 'package:groceries_app/bottom_nav_bar_screen.dart';
import 'package:groceries_app/widgets/app_button.dart';
import 'package:groceries_app/widgets/app_form_field.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/carrot.png', width: 47, height: 55),
              ),
              SizedBox(height: 100),

              Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 26,
                  color: Color(0xFF181725),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your emails and password",
                style: TextStyle(
                  fontWeight: FontWeight(400),
                  fontSize: 16,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 40),

              Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 16,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 10),
              AppFormField(hintText: "Example@gmail.com"),
              SizedBox(height: 30),

              Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 16,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              SizedBox(height: 10),
              AppFormField(
                hintText: "***********",
                obscureText: true,
                icon: Icon(Icons.visibility_off, color: Color(0xFF7C7C7C)),
              ),
              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight(400),
                    color: Color(0xFF181725),
                  ),
                ),
              ),
              SizedBox(height: 30),

              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBarScreen(),
                    ),
                  );
                },
                child: AppButton(text: "Log In"),
              ),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(fontWeight: FontWeight(600)),
                  ),
                  Text(
                    "Sing up ",
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
