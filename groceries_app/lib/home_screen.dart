import 'package:flutter/material.dart';
import 'package:groceries_app/widgets/app_home_row.dart';
import 'package:groceries_app/widgets/app_product_horizontal_list.dart';
import 'package:groceries_app/widgets/app_product_card.dart';
import 'package:groceries_app/widgets/app_search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<GroceryCategoryCard> _groceries = [
    GroceryCategoryCard(
      title: 'Pulses',
      imagePath: 'assets/home/pulses.png',
      backgroundColor: Color(0xFFFEF2E4),
    ),
    GroceryCategoryCard(
      title: 'Rice',
      imagePath: 'assets/home/rice.png',
      backgroundColor: Color(0xFFE5F4EA),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Image.asset('assets/common/carrot.png', width: 20, height: 23),
              SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_rounded, color: Color(0xFF4C4F4D)),
                  Text(
                    "Dhaka, Banassre",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      fontSize: 18,
                      color: Color(0xFF4C4F4D),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              AppSearchField(),
              SizedBox(height: 15),

              AppHomeRow(text: "Exclusive Offer"),
              SizedBox(height: 15),

              ProductsHorizontalList(
                products: [
                  ProductCard(
                    imagePath: 'assets/home/banana.png',
                    mainText: 'Organic Bananas',
                    secondaryText: '7pcs, Price',
                    price: 4.99,
                  ),
                  ProductCard(
                    imagePath: 'assets/home/apple.png',
                    mainText: 'Red Apple',
                    secondaryText: '1kg, Price',
                    price: 4.99,
                  ),
                  ProductCard(
                    imagePath: 'assets/common/carrot.png',
                    mainText: 'carrot',
                    secondaryText: '1kg, Price',
                    price: 4.99,
                  ),
                ],
              ),
              SizedBox(height: 30),

              AppHomeRow(text: "Best Selling"),
              SizedBox(height: 20),

              ProductsHorizontalList(
                products: [
                  ProductCard(
                    imagePath: 'assets/home/pepper.png',
                    mainText: "Red pepper",
                    secondaryText: "1kg, Price",
                    price: 4.99,
                  ),
                  ProductCard(
                    imagePath: 'assets/home/ginger.png',
                    mainText: "Organic ginger",
                    secondaryText: "1kg, Price",
                    price: 4.99,
                  ),
                  ProductCard(
                    imagePath: 'assets/common/carrot.png',
                    mainText: 'carrot',
                    secondaryText: '1kg, Price',
                    price: 4.99,
                  ),
                ],
              ),
              SizedBox(height: 30),

              AppHomeRow(text: "Groceries"),
              SizedBox(height: 20),

              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => _groceries[i],
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15),
                  itemCount: _groceries.length,
                ),
              ),
              SizedBox(height: 20),
              ProductsHorizontalList(
                products: [
                  ProductCard(
                    imagePath: 'assets/home/beef.png',
                    mainText: "Beef Bone",

                    secondaryText: "1kg, Price",
                    price: 4.99,
                  ),
                  ProductCard(
                    imagePath: 'assets/home/chicken.png',
                    mainText: "Broiler Chicken",
                    secondaryText: "1kg, Price",
                    price: 4.99,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GroceryCategoryCard extends StatelessWidget {
  const GroceryCategoryCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.backgroundColor,
  });

  final String title;
  final String imagePath;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image.asset(imagePath),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
