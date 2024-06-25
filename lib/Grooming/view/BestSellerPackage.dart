import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Grooming/controller/CartController.dart';
import 'package:pet_app/Grooming/view/GiftBottomSheet.dart';
import 'package:pet_app/Grooming/view/PackageDetails.dart';

class BestSellerPackage extends StatelessWidget {
  final String packagename;
  final String ratings;
  final String reviews;
  final String duration;
  final List<String> packageservices;
  final double packageprice;
  final bool showgiftIconButton;
  final VoidCallback onclicked;

  final Cartcontroller cartcontroller =Get.put(Cartcontroller());

  BestSellerPackage({super.key,
    required this.packagename, 
    required this.ratings, 
    required this.reviews, 
    required this.duration, 
    required this.packageservices, 
    required this.packageprice,
    required this.showgiftIconButton,
    required this.onclicked
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/packageimage.png'),
                      const Text('Package',style: TextStyle(color: Colors.orangeAccent)),
                    ],
                  ),
                  if(showgiftIconButton)
                  GiftBottomSheet(duration: duration,packagename: packagename,packageprice: packageprice,packageservices: packageservices,ratings: ratings,reviews: reviews)
                ],
              ),
              Text(packagename,style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Color.fromRGBO(239, 109, 78, 1),
                    size: 12,
                  ),
        
                  Text(ratings,style: const TextStyle(fontSize: 12)),
        
                  const SizedBox(width: 10),
        
                  const Icon(Icons.reviews,size: 12,color: Color.fromRGBO(239, 109, 78, 1)),
        
                  Text(reviews,style: const TextStyle(fontSize: 12)),
        
                  const Icon(Icons.alarm,size: 12,color: Color.fromRGBO(239, 109, 78, 1)),
        
                  Text(duration,style: const TextStyle(fontSize: 12)),
                  const PackageDetails(),
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              Wrap(
                  spacing: 4,
                  runSpacing: 2,
                  children: List.generate(packageservices.length,(index) {
                      return Text('\u2022 ${packageservices[index]}',style: const TextStyle(color: Colors.grey),
                      );
                    },
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\u20B9 ${packageprice.toString()}',style:const TextStyle(color: Color.fromRGBO(237, 109, 78, 1),fontWeight: FontWeight.w600),),
                  ElevatedButton(
                      onPressed: onclicked,
                      child:showgiftIconButton?const Text('Add to cart'):const Text('Gift Now'),
                    )  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
