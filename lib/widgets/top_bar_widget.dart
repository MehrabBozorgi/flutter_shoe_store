import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: const Icon(Icons.shopping_cart_outlined),
          ),
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: const Icon(Icons.notifications_none),
          ),
        ),
      ],
    );
  }
}