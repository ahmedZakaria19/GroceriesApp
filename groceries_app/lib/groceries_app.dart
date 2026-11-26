import 'package:flutter/material.dart';

import 'account_screen.dart';
import 'bottom_nav_bar_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class GroceriesApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}
