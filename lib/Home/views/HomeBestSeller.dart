import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';
import 'package:pet_app/Home/views/HomeBestSellerTile.dart';
import 'package:pet_app/Models/product.dart';

// ignore: must_be_immutable
class HomeBestSeller extends StatelessWidget {
  HomeBestSeller({super.key, required this.loginstatus, required this.products});

  final bool loginstatus;

  final List<Product> products;

  final Cartcontroller cartcontroller = Get.put(Cartcontroller());

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
        Container(
          height: MediaQuery.of(context).size.width * 0.54,
          constraints: const BoxConstraints(maxHeight: 190, minHeight: 190),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return HomeBestSellerTile(
                product: product,
                isLoggedIn: loginstatus,
                onclicked: () {
                        cartcontroller.additemtoCart(Producttype.products,product);
                        print(cartcontroller.cartitems.length);
                },
              );
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
