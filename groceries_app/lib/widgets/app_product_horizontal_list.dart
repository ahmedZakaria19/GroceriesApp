import 'package:flutter/material.dart';
import 'package:groceries_app/widgets/app_product_card.dart';

class ProductsHorizontalList extends StatelessWidget {
  const ProductsHorizontalList({super.key, required this.products});
  final List<ProductCard> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        separatorBuilder: (context, index) => SizedBox(width: 12),
        itemBuilder: (context, i) {
          return products[i];
        },
      ),
    );
  }
}