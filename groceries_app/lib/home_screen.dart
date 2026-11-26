import 'package:flutter/material.dart';
import 'package:groceries_app/widgets/app_home_row.dart';
import 'package:groceries_app/widgets/app_product_horizontal_list.dart';
import 'package:groceries_app/widgets/app_proudct_card.dart';
import 'package:groceries_app/widgets/app_search_Field.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Image.asset('assets/carrot.png', width: 20, height: 23),
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
                    image: Image.asset(
                      'assets/banana.png',
                      width: 100,
                      height: 70,
                    ),
                    mainText: 'Organic Bananas',
                    secondaryText: '7pcs, Priceg',
                    price: 4.99,
                  ),
                  ProductCard(
                    image: Image.asset(
                      'assets/apple.png',
                      width: 100,
                      height: 70,
                    ),
                    mainText: 'Red Apple',
                    secondaryText: '1kg, Priceg',
                    price: 4.99,
                  ),
                  ProductCard(
                    image: Image.asset(
                      'assets/carrot.png',
                      width: 100,
                      height: 70,
                    ),
                    mainText: 'carrot',
                    secondaryText: '1kg, Priceg',
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
                    image: Image.asset(
                      'assets/pepper.png',
                      width: 100,
                      height: 70,
                    ),
                    mainText: "Red pepper",
                    secondaryText: "1kg, Priceg",
                    price: 4.99,
                  ),
                  ProductCard(
                    image: Image.asset(
                      'assets/ginger.png',
                      width: 100,
                      height: 70,
                    ),
                    mainText: "Organic ginger",
                    secondaryText: "1kg, Priceg",
                    price: 4.99,
                  ),
                  ProductCard(
                    image: Image.asset(
                      'assets/carrot.png',
                      width: 100,
                      height: 70,
                    ),
                    mainText: 'carrot',
                    secondaryText: '1kg, Priceg',
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
                  itemBuilder: (context, i) {
                    return i == 0
                        ? Container(
                            width: 250,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFFFEF2E4),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/pulses.png'),
                                SizedBox(width: 15),
                                Text(
                                  "Pulses",
                                  style: TextStyle(
                                    fontWeight: FontWeight(600),
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            width: 250,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFFE5F4EA),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/rice.png'),
                                SizedBox(width: 15),
                                Text(
                                  "Rice",
                                  style: TextStyle(
                                    fontWeight: FontWeight(600),
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 15),
                  itemCount: 2,
                ),
              ),
              SizedBox(height: 20),
              ProductsHorizontalList(
                products: [
                  ProductCard(
                    image: Image.asset('assets/beef.png'),
                    mainText: "Broiler Chicken",
                    secondaryText: "1kg, Priceg",
                    price: 4.99,
                  ),
                  ProductCard(
                    image: Image.asset('assets/chicken.png'),
                    mainText: "Beef Bone",
                    secondaryText: "1kg, Priceg",
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
