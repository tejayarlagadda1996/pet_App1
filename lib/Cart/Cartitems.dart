import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/PackageinCart.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';

class Cartitems extends StatelessWidget {
  final List<dynamic> itemsincart;
  Cartitems({super.key, required this.itemsincart});
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemsincart.map((e) => Packageincart(packageincart: e)).toList()
    );
  }
}
