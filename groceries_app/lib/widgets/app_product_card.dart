import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.imagePath,
    required this.mainText,
    required this.secondaryText,
    required this.price,
  });
  final String imagePath;
  final String mainText;
  final String secondaryText;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFE2E2E2), width: 1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(imagePath, width: 100, height: 70)),
          Text(
            mainText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis ,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF181725),
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(secondaryText,maxLines: 1,overflow: TextOverflow.ellipsis ,style: TextStyle(color: Color(0xFF7C7C7C))),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$$price",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 18,
                  color: Color(0xFF181725),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
