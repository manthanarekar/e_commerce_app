import 'package:e_commerce_app/Pages/show_product.dart';
import 'package:e_commerce_app/const/text_filed.dart';
import 'package:e_commerce_app/data/product_data.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatefulWidget {
  ProductGrid({required this.ItemCount, super.key});

  int ItemCount;

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  BacktoHomefromProDetail() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.ItemCount,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 320),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => ShowProduct(
                      img: ProductsList[index].img,
                      ProductName: ProductsList[index].ProductName,
                      ProductPrize: ProductsList[index].ProductPrize,
                      ProductDescription:
                          ProductsList[index].ProductDescription,
                      Size: ProductsList[index].Size,
                      listIdNo: ProductsList[index].id,
                    ));
          },
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: DecorationImage(
                            image: AssetImage(ProductsList[index].img),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              SemiBoldfont(ProductsList[index].ProductName, 20, Colors.black),
              SemiBoldfont("${ProductsList[index].ProductPrize.toString()} Rs",
                  18, Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
