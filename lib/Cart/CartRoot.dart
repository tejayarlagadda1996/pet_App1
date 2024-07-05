import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/Bottombuttons.dart';
import 'package:pet_app/Cart/Cartitems.dart';
import 'package:pet_app/Cart/DeliveryAddress.dart';
import 'package:pet_app/Cart/Offerforyou.dart';
import 'package:pet_app/Cart/Price_details.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Utils/BannerImage.dart';

class CartRoot extends StatefulWidget {
  const CartRoot({super.key});

  @override
  State<CartRoot> createState() => _CartRootState();
}

class _CartRootState extends State<CartRoot> {

  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  double cost = 0;
  bool ifyes = false;

  void definecartitem(){
    
  }

  // void cartTotal() {
  //   for(int i=0; i<cartcontroller.cartitems.length; i++)
  //   {
  //     cost += cartcontroller.cartitems.productPrice[i];
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Deliveryaddress(),
                Obx(() => Cartitems(itemsincart: cartcontroller.cartitems.toList())),
                Offerforyou(),
                Obx(() => Pricedetails(itemsincart:cartcontroller.cartitems.toList())),
                
                const BannerImage(imgUrl:'"assets/petshop_image_1.png"')
                
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Bottombuttons(),
        floatingActionButton: FloatingActionButton(onPressed: (){
          print(cartcontroller.cartitems);
          cartcontroller.clearCart();
        }),
      );
  }
}
