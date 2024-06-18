import 'package:e_commerce_app/Pages/show_product.dart';
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/text_filed.dart';
import 'package:e_commerce_app/data/product_data.dart';
import 'package:flutter/material.dart';

class CategoriesShowPro extends StatefulWidget {
  CategoriesShowPro({super.key, required this.Categories});

  String Categories;

  @override
  State<CategoriesShowPro> createState() => _CategoriesShowProState();
}

class _CategoriesShowProState extends State<CategoriesShowPro> {
  List<productdata> CategoriesData = [];

  @override
  void initState() {
    super.initState();
    int i;
    for (i = 0; i < ProductsList.length; i++) {
      if (ProductsList[i].Categories == widget.Categories) {
        setState(() {
          CategoriesData.add(ProductsList[i]);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Column(
        children: [
          RobotoBoldfont(widget.Categories.toString(), 30, blue!),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: CategoriesData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 380),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => ShowProduct(
                          img: CategoriesData[index].img,
                          Size: CategoriesData[index].Size,
                          ProductName: CategoriesData[index].ProductName,
                          ProductPrize: CategoriesData[index].ProductPrize,
                          ProductDescription:
                              CategoriesData[index].ProductDescription,
                          listIdNo: CategoriesData[index].id));
                },
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          image: DecorationImage(
                              image: AssetImage(CategoriesData[index].img),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(height: 5),
                    SemiBoldfont(
                        CategoriesData[index].ProductName, 20, Colors.black),
                    SemiBoldfont("${CategoriesData[index].ProductPrize} Rs", 18,
                        Colors.black),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
