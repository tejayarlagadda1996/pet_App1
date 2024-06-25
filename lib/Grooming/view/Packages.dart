import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Grooming/controller/CartController.dart';
import 'package:pet_app/Grooming/view/BestSellerPackage.dart';
import 'package:pet_app/Grooming/model/Package.dart';

class Packages extends StatelessWidget {
  final List<Package> packagelist;
  Packages({super.key, required this.packagelist});
  final Cartcontroller cartController = Get.put(Cartcontroller());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: packagelist.length,
      itemBuilder: (context, index) {
          return BestSellerPackage(
            packagename: packagelist[index].packagename,
            ratings: packagelist[index].ratings,
            reviews: packagelist[index].reviews,
            duration: packagelist[index].duration,
            packageservices: packagelist[index].packageservices,
            packageprice: packagelist[index].packageprice,
            showgiftIconButton: true,
            onclicked: (){},
          );
        },
    );
  }
}