import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';
import 'package:pet_app/Models/product.dart';

class CartProduct extends StatelessWidget {
  CartProduct({super.key, required this.product});
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(product.productImagePath),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.productName),
                    Text(product.productDescription),
                    const Text('Delivery By Sun 2,May'),
                    Text(product.productsize[0])
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      cartcontroller.deleteiteminCart(
                          Producttype.products, product);
                    },
                    icon: const Icon(Icons.delete))
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Quantity : 1'),
                Text('\u20B9 ${product.productPrice}')
              ],
            )
          ],
        ),
      ),
    );
  }
}
