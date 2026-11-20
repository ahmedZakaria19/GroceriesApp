

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF53B175),
        borderRadius: BorderRadius.circular(19),
      ),
      padding: EdgeInsets.symmetric(vertical: 24.5),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
