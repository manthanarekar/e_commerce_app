class Categories {
  Categories({required this.CategoriesName, required this.img});

  String CategoriesName;
  String img;
}

List<Categories> categories = [
  Categories(CategoriesName: "Jacket", img: 'assets/image/Jackets/1.jpg'),
  Categories(CategoriesName: "Hat", img: 'assets/image/Hats/4.jpg'),
  Categories(CategoriesName: "Scarve", img: 'assets/image/Scarves/4.jpg'),
];
