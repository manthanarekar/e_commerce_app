import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/text_filed.dart';
import 'package:e_commerce_app/data/product_data.dart';
import 'package:flutter/material.dart';

class ShowProduct extends StatefulWidget {
  ShowProduct(
      {required this.img,
      required this.Size,
      required this.ProductName,
      required this.ProductPrize,
      required this.ProductDescription,
      required this.listIdNo,
      super.key});

  String img;
  String ProductName;
  int ProductPrize;
  String ProductDescription;
  List<String> Size;
  int listIdNo;

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  String likeimg = "UnLikeProduct";
  String ShowFull = "Showless";
  String Addtocart = "Notincart";

  @override
  void initState() {
    super.initState();
    if (ProductsList[widget.listIdNo].likeProduct == "LikeProduct") {
      setState(() {
        likeimg = "LikeProduct";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                ),
              ),
              SemiBoldfont("Detail", 25, Colors.black),
              IconButton(
                  onPressed: () {
                    if (ProductsList[widget.listIdNo].likeProduct !=
                        "UnLikeProduct") {
                      setState(() {
                        ProductsList[widget.listIdNo].likeProduct =
                            "UnLikeProduct";
                        likeimg = ProductsList[widget.listIdNo].likeProduct;
                      });
                    } else {
                      setState(() {
                        ProductsList[widget.listIdNo].likeProduct =
                            "LikeProduct";
                        likeimg = ProductsList[widget.listIdNo].likeProduct;
                      });
                    }
                  },
                  icon: Icon(
                    likeimg != "UnLikeProduct"
                        ? Icons.favorite
                        : Icons.favorite_border_rounded,
                    color: Colors.pinkAccent,
                  ))
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage(widget.img), fit: BoxFit.cover)),
          ),
          const SizedBox(height: 10),
          Align(
              alignment: Alignment.centerLeft,
              child: RobotoBoldfont(
                  widget.ProductName.toString(), 30, Colors.black)),
          const SizedBox(height: 10),
          ShowFull == "Showless"
              ? SizedBox(
                  height: 40,
                  child:
                      Regularfont(widget.ProductDescription, 15, Colors.black))
              : Regularfont(widget.ProductDescription, 15, Colors.black),
          TextButton(
              onPressed: () {
                if (ShowFull != "Showfull") {
                  setState(() {
                    ShowFull = "Showfull";
                  });
                } else {
                  setState(() {
                    ShowFull = "Showless";
                  });
                }
              },
              style: TextButton.styleFrom(elevation: 0),
              child: Regularfont(
                  ShowFull == "Showless" ? "Read more" : "Read less",
                  15,
                  Colors.black)),
          Align(
              alignment: Alignment.centerLeft,
              child: SemiBoldfont("Sizes", 20, Colors.black)),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.Size.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 10),
                child: widget.Size[index] != "Same for all"
                    ? Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 2)),
                        child: Center(
                            child: SemiBoldfont(
                                widget.Size[index], 20, Colors.black)),
                      )
                    : SemiBoldfont(widget.Size[index], 20, Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: SemiBoldfont("${widget.ProductPrize.toString()} Rs",
                      40, Colors.black)),
              Spacer(),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Addtocart != "AddedtoCart" ? blue : Colors.grey),
                    onPressed: () {
                      setState(() {
                        Addtocart = "AddedtoCart";
                      });
                    },
                    child: SemiBoldfont("Add to Cart", 20, Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
