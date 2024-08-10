class ProductModel {
  final String image;
  final String title;
  final String description;
  final double price;

  ProductModel({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

 static List<ProductModel> productList = [



    ProductModel(
      title: 'Nike shoes red',
      image: 'assets/images/pic1.jpg',
      description:
          'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
      price: 100,
    ),
    ProductModel(
      title: 'shoes 2',
      image: 'assets/images/pic2.jpg',
      description:
          'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
      price: 150,
    ),
    ProductModel(
      title: 'Nike shoes red 2',
      image: 'assets/images/pic3.jpg',
      description:
          'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
      price: 75,
    ),
    ProductModel(
      title: 'Nike shoes green',
      image: 'assets/images/pic4.jpg',
      description:
          'Made from at least 40% recycled materials by weight, the Nike Air VaporMax 2021 FK is airy and easy to wear with superstretchy, recycled Flyknit fabric',
      price: 245,
    ),
  ];
}
