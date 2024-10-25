import 'package:flutter/material.dart';
import 'package:pet_app/Models/GroomingPackage.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';
import 'package:pet_app/Home/views/HomeGroomingTile.dart';

class GroomingPackageCard extends StatelessWidget {
  const GroomingPackageCard({super.key, required this.packageslist});

  final List<GroomingPackage> packageslist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "Popular Grooming Package",
          subtitle: "Get up to 15% off on your first grooming",
          onPressedViewAll: () {},
          showViewAllButton: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.75,
            constraints: const BoxConstraints(maxHeight: 270, minHeight: 250),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:packageslist.length,
              itemBuilder: (context, index) {
                final package = packageslist[index];
                return HomeGroomingTile(
                  package: package,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
