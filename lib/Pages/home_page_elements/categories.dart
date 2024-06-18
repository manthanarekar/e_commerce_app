import 'package:e_commerce_app/Pages/categories_show_product.dart';
import 'package:e_commerce_app/const/text_filed.dart';
import 'package:e_commerce_app/data/categories_data.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => CategoriesShowPro(
                            Categories: categories[index].CategoriesName));
                  },
                  child: SizedBox(
                      child: Column(
                    children: [
                      Container(
                        width: 100,
                        padding: const EdgeInsets.all(2),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  categories[index].img,
                                  fit: BoxFit.cover,
                                )),
                            RobotoBoldfont(categories[index].CategoriesName, 15,
                                Colors.black),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
              )),
    );
  }
}
