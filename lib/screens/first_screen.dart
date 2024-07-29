import 'package:flutter/material.dart';
import 'package:flutter_shoe_store/model/product_model.dart';

import '../widgets/main_list_item.dart';
import '../widgets/top_bar_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            TopBarWidget(width: width),
            Expanded(
              child: ListView.builder(
                itemCount: ProductModel.productList.length,
                itemBuilder: (context, index) {
                  return MainListItem(width: width, index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// return Container(
//                     width: width,
//                     margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                     padding: const EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: Colors.black87,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Column(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//                           child: Image.asset(ProductModel.productList[index].image),
//                         ),
//                         Text(
//                           ProductModel.productList[index].title,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           ProductModel.productList[index].price.toString(),
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
