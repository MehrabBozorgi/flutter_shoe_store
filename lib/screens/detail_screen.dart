import 'package:flutter/material.dart';
import 'package:flutter_shoe_store/widgets/top_bar_widget.dart';

import '../model/product_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.productModel});

  final ProductModel productModel;

  // const DetailScreen({
  //   super.key,
  //   required this.image,
  //   required this.desc,
  //   required this.price,
  //   required this.title,
  // });

  // final String image;
  // final String desc;
  // final double price;
  // final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 15),
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(productModel.image), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            TopBarWidget(width: width),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),

              width: width,
              height: 250,
              decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Text(
                    productModel.title,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    productModel.description,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Buy ${productModel.price.round()}',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
