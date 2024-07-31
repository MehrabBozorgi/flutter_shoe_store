import 'package:flutter/material.dart';
import 'package:flutter_shoe_store/model/product_model.dart';

import '../screens/detail_screen.dart';

class MainListItem extends StatelessWidget {
  const MainListItem({super.key, required this.width, required this.index});

  final double width;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailScreen(productModel: ProductModel.productList[index]),
          ),
        );

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (_) => DetailScreen(
        //       image: ProductModel.productList[index].image,
        //       desc: ProductModel.productList[index].description,
        //       price: ProductModel.productList[index].price,
        //       title: ProductModel.productList[index].title,
        //     ),
        //   ),
        // );
      },
      child: Container(
        width: width,
        height: 225,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(ProductModel.productList[index].image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
              decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.circular(50)),
              child: Text(
                ProductModel.productList[index].title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    ProductModel.productList[index].price.round().toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Card(
                  shape: CircleBorder(),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.shopping_cart_checkout),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
