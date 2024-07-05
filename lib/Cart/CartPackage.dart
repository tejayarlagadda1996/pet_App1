import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';
import 'package:pet_app/Models/GroomingPackage.dart';

class CartPackage extends StatelessWidget {
  CartPackage({super.key, required this.package});

  final Cartcontroller cartcontroller = Get.put(Cartcontroller());

  final GroomingPackage package;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/packageimage.png'),
            const Text('Package',style: TextStyle(color: Color.fromRGBO(241, 168, 82, 1))),
            const Spacer(),
            IconButton(
                onPressed: () {
                  cartcontroller.deleteiteminCart(Producttype.packages, package);
                },
                icon: const Icon(Icons.delete))
          ],
        ),
        Text(package.packageName),
        Wrap(
            spacing: 4,
            runSpacing: 2,
            children: List.generate(
              package.packageDetails.length,
              (index) {
                return Text(
                  '\u2022 ${package.packageDetails[index]}',
                  style: const TextStyle(color: Colors.grey),
                );
              },
            )),
             Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Quantity : 1'),
                Text('\u20B9 ${package.packagePrice}')
              ],
            )
      ],
    );
  }
}
