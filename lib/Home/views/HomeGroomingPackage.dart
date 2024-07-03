import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/controllers/grooming_package_controller.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';
import 'package:pet_app/Home/views/HomeGroomingTile.dart';

class HomeGroomingPackage extends StatelessWidget {
  HomeGroomingPackage({super.key});

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
                    return HomeGroomingTile(
                      package: package,
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
