import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/view/BestsellerCard_widget.dart';
import 'package:pet_app/Grooming/Packagemodel/Package.dart';

class Packages extends StatelessWidget {
  final List<Package> packagelist;
  const Packages({super.key, required this.packagelist});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: packagelist.map((data){
        return BestSeller(packagename: data.packagename, ratings: data.ratings, reviews: data.reviews, duration: data.duration, packageservices: data.packageservices, packageprice: data.packageprice,showIconButton: true,isselected: false,);
      }
    ).toList(),
  );
  }
}