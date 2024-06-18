import 'package:e_commerce_app/Pages/show_product.dart';
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/text_filed.dart';
import 'package:e_commerce_app/data/product_data.dart';
import 'package:flutter/material.dart';

class FavoriteProduct extends StatefulWidget {
  const FavoriteProduct({super.key});

  @override
  State<FavoriteProduct> createState() => _FavoriteProductState();
}

class _FavoriteProductState extends State<FavoriteProduct> {
  List<productdata> favoriteproductdata = [];

  @override
  void initState() {
    int i;
    for (i = 0; i < ProductsList.length; i++) {
      if (ProductsList[i].likeProduct != "UnLikeProduct") {
        setState(() {
          favoriteproductdata.add(ProductsList[i]);
        });
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Column(
        children: [
          RobotoBoldfont("Favorite", 30, blue!),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: favoriteproductdata.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 450),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => ShowProduct(
                          img: favoriteproductdata[index].img,
                          Size: favoriteproductdata[index].Size,
                          ProductName: favoriteproductdata[index].ProductName,
                          ProductPrize: favoriteproductdata[index].ProductPrize,
                          ProductDescription:
                              favoriteproductdata[index].ProductDescription,
                          listIdNo: favoriteproductdata[index].id));
                },
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          image: DecorationImage(
                              image: AssetImage(favoriteproductdata[index].img),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(height: 5),
                    SemiBoldfont(favoriteproductdata[index].ProductName, 20,
                        Colors.black),
                    SemiBoldfont(
                        "${favoriteproductdata[index].ProductPrize} Rs",
                        18,
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
