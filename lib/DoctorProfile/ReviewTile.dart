import 'package:flutter/material.dart';
import 'package:pet_app/Utils/StarBuilder.dart';

class ReviewTile extends StatelessWidget {
  final String reviewerName;
  final double reviewRating;
  final String reviewText;
  final bool reviewVerified;
  final String reviewDate;

  const ReviewTile({
    super.key,
    required this.reviewerName,
    required this.reviewRating,
    required this.reviewText,
    required this.reviewVerified,
    required this.reviewDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 10, top: 4),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border:
                Border.all(color: const Color.fromARGB(135, 213, 213, 213))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,8,8,8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name and stars
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewerName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  StarBuilder.buildStars(reviewRating),
                ],
              ),
              const SizedBox(height: 8),
              // REVIEW TEXT
              Text(
                reviewText,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // VERIFIED
                  Row(
                    children: [
                      Text(
                        reviewVerified ? 'A Verified Review': "" ,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        reviewVerified ? Icons.check_circle : null,
                        color: Colors.green,
                        size: 14,
                      ),
                    ],
                  ),
                  //  DATE
                  Text(
                    reviewDate,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
