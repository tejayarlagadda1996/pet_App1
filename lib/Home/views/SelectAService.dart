import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Grooming/view/GroomingRoot.dart';
import 'package:pet_app/Home/views/HomeServiceTile.dart';
import 'package:pet_app/PetShop/views/PetShopRoot.dart';
import 'package:pet_app/Treatment/views/TreatmentRoot.dart';

class SelectAService extends StatelessWidget {
  const SelectAService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 14.0, top: 14, bottom: 8),
          child: Text(
            "Select a Service",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: HomeServiceTile(
                name: "Grooming",
                imgUrl: "assets/grooming_icon.png",
                onTileTap: () {
                  Get.to(() => GroomingRoot());
                },
              ),
            ),
            Expanded(
              child: HomeServiceTile(
                name: "Pet Shop",
                imgUrl: "assets/pet_shop_icon.png",
                onTileTap: () {
                  Get.to(() => const PetShopRoot());
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: HomeServiceTile(
                name: "Treatment",
                imgUrl: "assets/treatment_icon.png",
                onTileTap: () {
                  Get.to(() => const TreatmentRoot());
                },
              ),
            ),
            Expanded(
              child: HomeServiceTile(
                name: "Lab Test",
                imgUrl: "assets/lab_test_icon.png",
                onTileTap: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
