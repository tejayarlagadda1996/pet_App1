import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/controllers/lab_test_controller.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';
import 'package:pet_app/Home/views/HomeLabTestTile.dart';

class HomeLabTest extends StatelessWidget {
  HomeLabTest({super.key});
  final LabTestController labTestController = Get.put(LabTestController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Get Your First Lab Test Done",
          subtitle: "Get up to 15% off on your first grooming",
          onPressed: () {},
          showViewAllButton: true,
        ),
        Obx(() {
          if (labTestController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (labTestController.labTestList.isEmpty) {
            return const Center(child: Text('No lab tests available'));
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.6,
                constraints: const BoxConstraints(
                  maxHeight: 220,
                  minHeight: 210,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: labTestController.labTestList.length,
                  itemBuilder: (context, index) {
                    final labTest = labTestController.labTestList[index];
                    return HomeLabTestTile(
                      testName: labTest.labTestName,
                      description: labTest.labTestDescription,
                      parameters: labTest.labTestParameters,
                      originalPrice: labTest.labTestOriginalPrice,
                      discountedPrice: labTest.labTestDiscountedPrice,
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
