import 'package:flutter/material.dart';

class AppHomeRow extends StatelessWidget {
  const AppHomeRow({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 24,
            color: Color(0xFF181725),
          ),
        ),
        Text(
          "See all",
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 16,
            color: Color(0XFF53B175),
          ),
        ),
      ],
    );
  }
}
