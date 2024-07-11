import 'package:flutter/material.dart';
import 'package:pet_app/DoctorProfile/DoctorReviews.dart';

class DoctorProfileReviews extends StatelessWidget {
  const DoctorProfileReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviews',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'View all x Reviews',
                style: TextStyle(
                    color: Color.fromRGBO(237, 109, 78, 1),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          DoctorReviews(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 239, 230, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit_document,
                        color: Color.fromRGBO(237, 109, 78, 1),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Write a Review',
                        style: TextStyle(
                            color: Color.fromRGBO(237, 109, 78, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
