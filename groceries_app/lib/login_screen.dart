import 'package:flutter/material.dart';

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
                child: Image.asset('assets/Group.png', width: 47, height: 55),
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

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Example@gmail.com",
                  hintStyle: TextStyle(fontWeight: FontWeight(300)),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                ),
              ),
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

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "*********",

                  hintStyle: TextStyle(fontWeight: FontWeight(300)),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Color(0xFF7C7C7C),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                ),
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

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(19),
                ),
                padding: EdgeInsets.symmetric(vertical: 24.5),
                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
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
                    "Singup ",
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
