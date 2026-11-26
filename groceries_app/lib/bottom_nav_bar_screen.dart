import 'package:flutter/material.dart';
import 'package:groceries_app/account_screen.dart';
import 'package:groceries_app/home_screen.dart';
import 'package:groceries_app/login_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  @override
  int cuurent_index = 0;
  List<Widget> screens = [
    HomeScreen(),
    LoginScreen(),
    LoginScreen(),
    LoginScreen(),
    AccountScreen(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[cuurent_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            cuurent_index = index;
          });
        },
        currentIndex: cuurent_index,
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
