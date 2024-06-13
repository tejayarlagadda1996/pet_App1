import 'package:flutter/material.dart';
import 'package:pet_app/PetShop/views/SizedColoredBox.dart';

class ProductDetailsButton extends StatelessWidget {
  const ProductDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedColoredBox(),
        Padding(
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
        ),
        const SizedColoredBox(),
      ],
    );
  }
}
