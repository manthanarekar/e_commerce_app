import 'package:e_commerce_app/Pages/home_page_elements/product_grid.dart';
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/text_filed.dart';
import 'package:e_commerce_app/data/product_data.dart';
import 'package:flutter/material.dart';

class AllProductsGrid extends StatefulWidget {
  const AllProductsGrid({super.key});

  @override
  State<AllProductsGrid> createState() => _AllProductsGridState();
}

class _AllProductsGridState extends State<AllProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Boldfont("All Products", 25, blue!),
              Divider(
                color: blue!.withOpacity(0.5),
              ),
              const SizedBox(height: 20),
              ProductGrid(ItemCount: ProductsList.length),
            ],
          )),
    );
  }
}
