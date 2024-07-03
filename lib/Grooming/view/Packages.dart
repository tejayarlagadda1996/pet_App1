import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';
import 'package:pet_app/Grooming/view/BestSellerPackage.dart';
import 'package:pet_app/Models/GroomingPackage.dart';

class Packages extends StatelessWidget {
  final List<GroomingPackage> packagelist;
  Packages({super.key, required this.packagelist});
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: packagelist.length,
      itemBuilder: (context, index) {
          return BestSellerPackage(
            packagename: packagelist[index].packageName,
            ratings: packagelist[index].packageRating.toString(),
            reviews: packagelist[index].packageReviews.toString(),
            duration: packagelist[index].packageTime,
            packageservices: packagelist[index].packageDetails,
            packageprice: packagelist[index].packagePrice.toDouble(),
            showgiftIconButton: true,
            onclicked: (){
              cartcontroller.additemtoCart(Producttype.packages,packagelist[index]);
              print(cartcontroller.cartitems.length);
            },
          );
        },
    );
  }
}