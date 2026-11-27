import 'package:flutter/material.dart';
import 'package:groceries_app/beverages_screen.dart';
import 'package:groceries_app/widgets/app_search_field.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  static List<ProductItem> products = [
    ProductItem(
      imagePath: 'assets/explore/fruits.png',
      text: 'Fresh Fruits\n& Vegetable',
      bgcolor: Color(0x1A53B175),
      screen: null,
    ),
    ProductItem(
      imagePath: 'assets/explore/oil.png',
      text: 'Cooking Oil\n& Ghee',
      bgcolor: Color(0x1AF8A44C),
      screen: null,
    ),
    ProductItem(
      imagePath: 'assets/explore/meat.png',
      text: 'Meat & Fish',
      bgcolor: Color(0x40F7A593),
      screen: null,
    ),
    ProductItem(
      imagePath: 'assets/explore/bakery.png',
      text: 'Bakery & Snacks',
      bgcolor: Color(0x40D3B0E0),
      screen: null,
    ),
    ProductItem(
      imagePath: 'assets/explore/eggs.png',
      text: 'Dairy & Eggs',
      bgcolor: Color(0x40FDE598),
      screen: null,
    ),
    ProductItem(
      imagePath: 'assets/explore/beverages.png',
      text: 'Beverages',
      bgcolor: Color(0x40B7DFF5),
      screen: BeveragesScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                "Find Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              AppSearchField(),
              SizedBox(height: 20),

              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 190,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) => products[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.imagePath,
    required this.text,
    required this.bgcolor,
    required this.screen,
  });
  final String imagePath;
  final String text;
  final Color bgcolor;
  final Widget? screen;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: screen == null
          ? null
          : () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen!),
            ),
      child: Container(
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(imagePath, width: 111, height: 74),
            SizedBox(height: 27),
            Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
