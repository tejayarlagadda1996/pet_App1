import 'package:flutter/material.dart';

class ProductDetailsForward extends StatelessWidget {
  const ProductDetailsForward({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Product Details",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_right_outlined),
            onPressed: () {}, //add functionality
          ),
        ],
      ),
    );
  }
}
