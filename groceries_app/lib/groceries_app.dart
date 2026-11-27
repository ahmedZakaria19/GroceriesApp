import 'package:flutter/material.dart';
import 'bottom_nav_bar_screen.dart';


class GroceriesApp extends StatelessWidget {
  const GroceriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}
