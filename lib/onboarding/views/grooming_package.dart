import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/consultation_header.dart';
import 'package:pet_app/onboarding/views/grooming_tile.dart';

class GroomingPackage extends StatefulWidget {
  const GroomingPackage({super.key});

  @override
  State<GroomingPackage> createState() => _GroomingPackageState();
}

class _GroomingPackageState extends State<GroomingPackage> {
  final List<Map<String, dynamic>> groomingPackages = [
    {
      'serviceName': 'Spa Service',
      'discount': 5,
      'rating': 4.5,
      'reviews': 20,
      'duration': '1hr 45mins',
      'services': [
        "Body Spray",
        "Medicated Bath",
        "Teeth Brushing",
        "Shampoo Bath",
        "Exercises"
      ],
      'price': 1120,
    },
    {
      'serviceName': 'Shampoo Service',
      'discount': 8,
      'rating': 4.2,
      'reviews': 28,
      'duration': '1hr 15mins',
      'services': ["Body Spray", "Medicated Bath", "Teeth Brushing"],
      'price': 1080,
    },
    {
      'serviceName': 'Spa Service',
      'discount': 5,
      'rating': 4.5,
      'reviews': 20,
      'duration': '1hr 45mins',
      'services': ["Body Spray", "Medicated Bath", "Teeth Brushing"],
      'price': 1120,
    },
    {
      'serviceName': 'Shampoo Service',
      'discount': 8,
      'rating': 4.2,
      'reviews': 28,
      'duration': '1hr 15mins',
      'services': [
        "Body Spray",
        "Medicated Bath",
        "Teeth Brushing",
        "Shampoo Bath",
        "Exercises"
      ],
      'price': 1080,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Popular Grooming Package",
          subtitle: "Get up to 15% off on your first grooming",
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.7,
            constraints: const BoxConstraints(maxHeight: 260, minHeight: 250),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: groomingPackages.length,
              itemBuilder: (context, index) {
                final package = groomingPackages[index];
                return GroomingTile(
                  serviceName: package['serviceName'],
                  discount: package['discount'],
                  rating: package['rating'],
                  reviews: package['reviews'],
                  duration: package['duration'],
                  services: package['services'],
                  price: package['price'],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
