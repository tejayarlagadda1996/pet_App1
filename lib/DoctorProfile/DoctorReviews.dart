import 'package:flutter/material.dart';
import 'package:pet_app/DoctorProfile/ReviewTile.dart';

class DoctorReviews extends StatelessWidget {
  DoctorReviews({super.key});

  final List<Map<String, dynamic>> doctorReviews = [
    {
      'reviewerName': 'Anne & Leo',
      'reviewRating': 4.0,
      'reviewText':
          "Thank you very much! Great clinic! The dog was limping, X-rayed, prescribed quality treatment. Dog of fights! Excellent specialists!",
      'reviewVerified': true,
      'reviewDate': "16/07/2024",
    },
    {
      'reviewerName': 'Anne & Leo',
      'reviewRating': 3.0,
      'reviewText':
          "Thank you very much! Great clinic! The dog was limping, X-rayed, prescribed quality treatment. Dog of fights! Excellent specialists!Thank you very much! Great clinic! The dog was limping, X-rayed, prescribed quality treatment. Dog of fights! Excellent specialists!",
      'reviewVerified': true,
      'reviewDate': "16/07/2024",
    },
    {
      'reviewerName': 'Anne & Leo',
      'reviewRating': 4.5,
      'reviewText':
          "Thank you very much! Great clinic! The dog was limping, X-rayed, prescribed quality treatment. Dog of fights! Excellent specialists!",
      'reviewVerified': false,
      'reviewDate': "16/07/2024",
    },
    {
      'reviewerName': 'Anne & Leo',
      'reviewRating': 4.0,
      'reviewText':
          "Thank you very much! Great clinic! The dog was limping, X-rayed, prescribed quality treatment. Dog of fights! Excellent specialists!",
      'reviewVerified': true,
      'reviewDate': "16/07/2024",
    },
    {
      'reviewerName': 'Anne & Leo',
      'reviewRating': 4.0,
      'reviewText':
          "Thank you very much!!",
      'reviewVerified': true,
      'reviewDate': "16/07/2024",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 4),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.3,
        constraints: const BoxConstraints(maxHeight: 190, minHeight: 170),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doctorReviews.length,
          itemBuilder: (context, index) {
            final review = doctorReviews[index];
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ReviewTile(
                reviewerName: review['reviewerName'],
                reviewRating: review['reviewRating'],
                reviewText: review['reviewText'],
                reviewVerified: review['reviewVerified'],
                reviewDate: review['reviewDate'],
              ),
            );
          },
        ),
      ),
    );
  }
}
