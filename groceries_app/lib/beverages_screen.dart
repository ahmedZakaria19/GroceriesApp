import 'package:flutter/material.dart';

import 'widgets/app_product_card.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});
  static const List<ProductCard> products = [
    ProductCard(
      imagePath: 'assets/beverages/diet_coke.png',
      mainText: 'Diet Coke',
      secondaryText: '355ml, Price',
      price: 1.99,
    ),
    ProductCard(
      imagePath: 'assets/beverages/sprite_can.png',
      mainText: 'Sprite Can',
      secondaryText: '325ml, Price',
      price: 1.50,
    ),
    ProductCard(
      imagePath: 'assets/beverages/apple_juice.png',
      mainText: 'Apple & Grape \nJuice',
      secondaryText: '2L, Price',
      price: 15.99,
    ),
    ProductCard(
      imagePath: 'assets/beverages/orange_juice.png',
      mainText: 'Orange Juice',
      secondaryText: '2L, Price',
      price: 15.99,
    ),
    ProductCard(
      imagePath: 'assets/beverages/coca_cola.png',
      mainText: 'Coca Cola Can',
      secondaryText: '325ml, Price',
      price: 4.99,
    ),
    ProductCard(
      imagePath: 'assets/beverages/pepsi.png',
      mainText: 'Pepsi Can ',
      secondaryText: '330ml, Price',
      price: 4.99,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Beverages",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [Icon(Icons.menu), SizedBox(width: 25)],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) {
            return products[index];
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}
