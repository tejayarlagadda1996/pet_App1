import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Grooming/view/BestSellerPackage.dart';
import 'package:pet_app/Grooming/view/RecieverBottomsheet.dart';

class GiftBottomSheet extends StatelessWidget {
  final String packagename;
  final String ratings;
  final String reviews;
  final String duration;
  final List<String> packageservices;
  final double packageprice;

  GiftBottomSheet(
      {super.key,
      required this.packagename,
      required this.ratings,
      required this.reviews,
      required this.duration,
      required this.packageservices,
      required this.packageprice});

  void giftBottomSheet(BuildContext context) {
    showModalBottomSheet(
      constraints: const BoxConstraints(maxHeight: double.infinity),
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/giftimage.png',
                      height: 200, fit: BoxFit.fitWidth),
                  BestSellerPackage(
                    packagename: packagename,
                    ratings: ratings,
                    reviews: reviews,
                    duration: duration,
                    packageservices: packageservices,
                    packageprice: packageprice,
                    showgiftIconButton: false,
                    onclicked: (){
                      Get.back();
                      receiverBottomsheet(context);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        giftBottomSheet(context);
      },
      icon: Image.asset('assets/gifticon.png'),
    );
  }

  
}
