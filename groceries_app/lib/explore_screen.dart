import 'package:flutter/material.dart';
import 'package:groceries_app/widgets/app_search_field.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<ProductItem> products = [
    ProductItem(
      imagePath: 'assets/Fruits.png',
      text: 'Fresh Fruits\n& Vegetable',
      bgcolor: Color(0x1A53B175),
    ),
    ProductItem(
      imagePath: 'assets/oil.png',
      text: 'Cooking Oil\n& Ghee',
      bgcolor: Color(0x1AF8A44C),
    ),
    ProductItem(
      imagePath: 'assets/meat.png',
      text: 'Meat & Fish',
      bgcolor: Color(0x40F7A593),
    ),
    ProductItem(
      imagePath: 'assets/Bakery.png',
      text: 'Bakery & Snacks',
      bgcolor: Color(0x40D3B0E0),
    ),
    ProductItem(
      imagePath: 'assets/egges.png',
      text: 'Dairy & Eggs',
      bgcolor: Color(0x40FDE598),
    ),
    ProductItem(
      imagePath: 'assets/Beverages.png',
      text: 'Beverages',
      bgcolor: Color(0x40B7DFF5),
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
                    childAspectRatio: 0.80,
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
  });
  final String imagePath;
  final String text;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
