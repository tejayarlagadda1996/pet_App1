import 'package:flutter/material.dart';
import 'package:pet_app/Models/lab_test.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';
import 'package:pet_app/Home/views/HomeLabTestTile.dart';

class HomeLabTest extends StatelessWidget {
  const HomeLabTest({super.key, required this.labtests});
  final List<LabTest> labtests;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Get Your First Lab Test Done",
          subtitle: "Get up to 15% off on your first grooming",
          onPressedViewAll: () {},
          showViewAllButton: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.6,
            constraints: const BoxConstraints(
              maxHeight: 220,
              minHeight: 210,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:labtests.length,
              itemBuilder: (context, index) {
                final labTest = labtests[index];
                return HomeLabTestTile(
                  labtest: labTest,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
