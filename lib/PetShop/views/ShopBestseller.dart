import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/controllers/HomeRootController.dart';
import 'package:pet_app/PetShop/views/ShopBestsellerTile.dart';

class ShopBestseller extends StatelessWidget {
  ShopBestseller({super.key});
  final Homerootcontroller homerootcontroller = Get.put(Homerootcontroller());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 14.0, top: 18, bottom: 8),
          child: Text(
            "Best Seller",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            children: List.generate(
              homerootcontroller.products.length,
              (index) {
                final item = homerootcontroller.products[index];
                return Column(
                  children: [
                    ShopBestsellerTile(
                      product: item,
                    ),
                    const SizedBox(height: 10)
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
