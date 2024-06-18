import 'package:e_commerce_app/Pages/all_products_grid.dart';
import 'package:e_commerce_app/Pages/favorite_product.dart';
import 'package:e_commerce_app/Pages/home_page_elements/product_grid.dart';
import 'package:e_commerce_app/Pages/home_page_elements/categories.dart';
import 'package:e_commerce_app/Pages/home_page_elements/offers.dart';
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/text_filed.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Background,
      appBar: AppBar(
        elevation: 0,
        title: Boldfont('Shopping App', 30, blue!),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: blue,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => const FavoriteProduct());
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.pinkAccent,
                    ))
              ],
            ),
          ),
        ],
        backgroundColor: Background,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const Offers(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: RobotoBoldfont("Categories", 23, blue!)),
              const Categories(),
              Row(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: RobotoBoldfont("Products", 23, blue!)),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => AllProductsGrid());
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                            color: blue!.withOpacity(0.7), fontSize: 18),
                      ))
                ],
              ),
              const SizedBox(height: 20),
              ProductGrid(ItemCount: 6)
            ],
          ),
        ),
      ),
    );
  }
}
