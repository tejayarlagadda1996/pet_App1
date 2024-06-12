import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Summery/home_summery.dart';
import 'package:pet_app/global_widgets/searchbar.dart';
import 'package:pet_app/pet_shop/views/shop_bestseller.dart';
import 'package:pet_app/pet_shop/views/shop_by_category.dart';

class PetShop extends StatefulWidget {
  const PetShop({super.key});

  @override
  State<PetShop> createState() => _PetShopState();
}

class _PetShopState extends State<PetShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 5,
          title: const Center(
              child: Text(
            "Pet Shop",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Get.to(const Summery());
                },
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
            )
          ],
        ),

        // DISPLAY SCREEN
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/petshop_image_1.png"),
                const SizedBox(height: 10),
                const PetSearchbar(
                  searchbarHintText: "ex : toys, grooming, medicine",
                ),
                const ShopByCategory(),
                const SizedBox(height: 20),
                ShopBestseller(),
              ],
            ),
          ),
        ));
  }
}
