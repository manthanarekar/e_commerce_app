class productdata {
  productdata(
      {required this.ProductName,
      required this.ProductDescription,
      required this.ProductPrize,
      required this.UploadDate,
      required this.img,
      required this.Size,
      required this.id,
      required this.Categories,
      required this.likeProduct});

  String ProductName;
  int id;
  String ProductDescription;
  int ProductPrize;
  DateTime UploadDate;
  String img;
  String likeProduct = "UnLikeProduct";
  List<String> Size;
  String Categories;
}

List<productdata> ProductsList = [
  productdata(
      id: 0,
      Categories: "Jacket",
      ProductName: "Brown Jacket",
      likeProduct: "LikeProduct",
      img: "assets/image/Jackets/3.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 1200,
      UploadDate: DateTime.now(),
      Size: ["XS", "S", "M", "L", "XL", "XXL"]),
  productdata(
      id: 1,
      ProductName: "Pink Scarves",
      Categories: "Scarve",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Scarves/3.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 799,
      UploadDate: DateTime.now(),
      Size: ["Same for all"]),
  productdata(
      id: 2,
      ProductName: "Skyblue cap",
      Categories: "Hat",
      likeProduct: "UnLikeProduct",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 300,
      UploadDate: DateTime.now(),
      img: "assets/image/Hats/1.jpg",
      Size: ["Small", "Regular", "Large"]),
  productdata(
      id: 3,
      Categories: "Jacket",
      ProductName: "leather Jacket",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Jackets/2.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 1500,
      UploadDate: DateTime.now(),
      Size: ["XS", "S", "M", "XXL"]),
  productdata(
      id: 4,
      ProductName: "Black Scarves",
      Categories: "Scarve",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Scarves/1.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 599,
      UploadDate: DateTime.now(),
      Size: ["Same for all"]),
  productdata(
      id: 5,
      ProductName: "Red cool cap",
      Categories: "Hat",
      likeProduct: "UnLikeProduct",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 500,
      UploadDate: DateTime.now(),
      img: "assets/image/Hats/2.jpg",
      Size: ["Small", "Regular", "Large"]),
  productdata(
      id: 6,
      ProductName: "Winter Jacket",
      Categories: "Jacket",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Jackets/4.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 800,
      UploadDate: DateTime.now(),
      Size: ["XS", "S", "M", "XXL"]),
  productdata(
      id: 7,
      ProductName: "Swag cap",
      Categories: "Hat",
      likeProduct: "UnLikeProduct",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 600,
      UploadDate: DateTime.now(),
      img: "assets/image/Hats/3.jpg",
      Size: ["Small", "Regular", "Large"]),
  productdata(
      id: 8,
      ProductName: "Cool Scarves",
      Categories: "Scarve",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Scarves/5.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 799,
      UploadDate: DateTime.now(),
      Size: ["Same for all"]),
  productdata(
      id: 9,
      ProductName: "Yellow Pop Jacket",
      Categories: "Jacket",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Jackets/5.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 1200,
      UploadDate: DateTime.now(),
      Size: ["XS", "S", "M", "L", "XL", "XXL"]),
  productdata(
      id: 10,
      ProductName: "Casual Jacket",
      Categories: "Jacket",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Jackets/6.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 699,
      UploadDate: DateTime.now(),
      Size: ["XS", "S", "M", "L"]),
  productdata(
      id: 11,
      ProductName: "Green cap",
      Categories: "Hat",
      likeProduct: "UnLikeProduct",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 499,
      UploadDate: DateTime.now(),
      img: "assets/image/Hats/5.jpg",
      Size: ["Small", "Regular", "Large"]),
  productdata(
      id: 12,
      ProductName: "Red USA cap",
      Categories: "Hat",
      likeProduct: "UnLikeProduct",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 999,
      UploadDate: DateTime.now(),
      img: "assets/image/Hats/6.jpg",
      Size: ["Small", "Regular", "Large"]),
  productdata(
      id: 13,
      ProductName: "Beatiful Scarves",
      Categories: "Scarve",
      likeProduct: "UnLikeProduct",
      img: "assets/image/Scarves/2.jpg",
      ProductDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley",
      ProductPrize: 999,
      UploadDate: DateTime.now(),
      Size: ["Same for all"]),
];
