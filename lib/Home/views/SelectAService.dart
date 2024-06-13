import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/views/ServiceTile.dart';
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
              child: ServiceTile(
                name: "Grooming",
                imgUrl: "assets/grooming_icon.png",
                onTileTap: () {
                  Get.to(() => const Groomingwidget());
                },
              ),
            ),
            Expanded(
              child: ServiceTile(
                name: "Pet Shop",
                imgUrl: "assets/pet_shop_icon.png",
                onTileTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PetShopRoot(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: ServiceTile(
                name: "Treatment",
                imgUrl: "assets/treatment_icon.png",
                onTileTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TreatmentRoot(),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ServiceTile(
                name: "Lab Test",
                imgUrl: "assets/lab_test_icon.png",
                onTileTap: () {}, // remove this and enable below
                // onTileTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const LabTest(),
                //     ),
                //   );
                // },
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
