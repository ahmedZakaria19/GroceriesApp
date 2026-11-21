import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class GroceriesApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
