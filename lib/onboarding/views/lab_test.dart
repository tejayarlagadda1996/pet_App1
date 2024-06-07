import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/consultation_header.dart';
import 'package:pet_app/onboarding/views/lab_test_tile.dart';

class LabTest extends StatefulWidget {
  const LabTest({super.key});

  @override
  State<LabTest> createState() => _LabTestState();
}

class _LabTestState extends State<LabTest> {
  final List<Map<String, dynamic>> labTests = [
    {
      'testName': 'Pup 101',
      'description':
          "A CBC for dogs identifies and quantifies white blood cells, red blood cells and platelets in a given amount of blood. This includes analyzing the condition of the pet.",
      'parameters': 5,
      'originalPrice': 1120,
      'discountedPrice': 280,
    },
    {
      'testName': 'Pup 102',
      'description':
          "Quantifies white blood cells, red blood cells and platelets in a given amount of blood. This includes analyzing the condition of the pet. A CBC for dogs identifies and quantifies white blood cells, red blood cells and platelets in a given amount of blood. This includes analyzing the condition of the pet",
      'parameters': 7,
      'originalPrice': 1080,
      'discountedPrice': 380,
    },
    {
      'testName': 'Pup 103',
      'description':
          "The CBC for dogs identifies and quantifies white blood cells, red blood cells and platelets in a given amount of blood.",
      'parameters': 3,
      'originalPrice': 1120,
      'discountedPrice': 220,
    },
    {
      'testName': 'Pup 104',
      'description':
          "A CBC for dogs identifies and quantifies white blood cells, red blood cells and platelets in a given amount of blood. This includes analyzing the condition of the pet.",
      'parameters': 4,
      'originalPrice': 1080,
      'discountedPrice': 380,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Get Your First Lab Test Done",
          subtitle: "Get up to 15% off on your first grooming",
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.6,
            constraints: const BoxConstraints(maxHeight: 220, minHeight: 210),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: labTests.length,
              itemBuilder: (context, index) {
                final labTest = labTests[index];
                return LabTestTile(
                  testName: labTest['testName'],
                  description: labTest['description'],
                  parameters: labTest['parameters'],
                  originalPrice: labTest['originalPrice'],
                  discountedPrice: labTest['discountedPrice'],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
