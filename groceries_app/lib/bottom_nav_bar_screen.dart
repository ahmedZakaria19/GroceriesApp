import 'package:flutter/material.dart';
import 'package:groceries_app/account_screen.dart';
import 'package:groceries_app/explore_screen.dart';
import 'package:groceries_app/home_screen.dart';
import 'package:groceries_app/login_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    LoginScreen(),
    LoginScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF53B175),
        unselectedItemColor: Color(0xFF181725),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
