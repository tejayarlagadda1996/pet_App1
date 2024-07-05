import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/CartPackage.dart';
import 'package:pet_app/Cart/CartProduct.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';

class Cartitems extends StatelessWidget {
  Cartitems({
    super.key,
    required this.itemsincart,
  });

  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  final List<dynamic> itemsincart;
  

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: cartcontroller.currenttype == Producttype.packages
            ? itemsincart.map((e) => CartPackage(package: e)).toList()
            : itemsincart.map((e) => CartProduct(product: e)).toList(),
      );
  }
}
