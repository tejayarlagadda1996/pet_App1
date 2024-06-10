import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/onboarding/controllers/bestseller_controller.dart';
import 'package:pet_app/onboarding/views/best_seller_tile.dart';

class BestSeller extends StatelessWidget {
  BestSeller({super.key});

  final BestsellerController bestsellerController = Get.put(BestsellerController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Best Seller",
                style: TextStyle(
                  color: Color.fromRGBO(26, 25, 25, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {}, // add functionality
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Color.fromRGBO(237, 109, 78, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Bestseller Item Display
        Obx(() {
          if (bestsellerController.isLoading.value) 
          {
            return const Center(child: CircularProgressIndicator());
          } 
          else if (bestsellerController.bestsellerList.isEmpty) 
          {
            return const Center(child: Text('No best sellers available'));
          } 
          else {
            return Container(
              height: MediaQuery.of(context).size.width * 0.54,
              constraints: const BoxConstraints(maxHeight: 190, minHeight: 190),

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 4),

                itemCount: bestsellerController.bestsellerList.length,
                itemBuilder: (context, index) {

                  final product = bestsellerController.bestsellerList[index];
                  return BestSellerTile(
                    name: product.productName,
                    imgUrl: product.productImagePath,
                    price: product.productPrice,
                  );
                },
              ),
            );
          }
        }),
        const SizedBox(height: 10),
      ],
    );
  }
}
