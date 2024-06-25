import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/PetShop/views/ShopBestseller.dart';
import 'package:pet_app/PetShop/views/ShopByCategory.dart';
import 'package:pet_app/Summery/home_summery.dart';
import 'package:pet_app/Utils/Searchbar.dart';

class PetShopRoot extends StatefulWidget {
  const PetShopRoot({super.key});

  @override
  State<PetShopRoot> createState() => _PetShopRootState();
}

class _PetShopRootState extends State<PetShopRoot> {
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
                  Get.to(() => const Summery());
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
                const Searchbar(
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
