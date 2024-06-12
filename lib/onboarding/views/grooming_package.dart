import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/onboarding/controllers/grooming_package_controller.dart';
import 'package:pet_app/global_widgets/consultation/consultation_header.dart';
import 'package:pet_app/onboarding/views/grooming_tile.dart';

class GroomingPackage extends StatelessWidget {
  GroomingPackage({super.key});

  final GroomingPackageController groomingPackageController = Get.put(GroomingPackageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Popular Grooming Package",
          subtitle: "Get up to 15% off on your first grooming",
          onPressed: () {},
          showViewAllButton: true,
        ),
        Obx(() {
          if (groomingPackageController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } 
          else if (groomingPackageController.groomingPackageList.isEmpty) {
            return const Center(child: Text('No packages available'));
          } 
          else {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.75,
                constraints:
                    const BoxConstraints(maxHeight: 270, minHeight: 250),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: groomingPackageController.groomingPackageList.length,
                  itemBuilder: (context, index) {
                    final package = groomingPackageController.groomingPackageList[index];
                    return GroomingTile(
                      serviceName: package.packageName,
                      discount: package.packageDiscount,
                      rating: package.packageRating,
                      reviews: package.packagePrice,
                      duration: package.packageTime,
                      services: package.packageDetails,
                      price: package.packagePrice,
                    );
                  },
                ),
              ),
            );
          }
        }),
      ],
    );
  }
}
