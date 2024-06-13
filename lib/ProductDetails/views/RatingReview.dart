import 'package:flutter/material.dart';

class RatingReview extends StatelessWidget {
  final double rating;
  final int reviews;

  const RatingReview({
    super.key,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ratings & Reviews",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$rating/5",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "$reviews reviews",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {}, // add functionality
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: const BorderSide(
                      color: Color.fromRGBO(237, 109, 78, 1),
                      width: 1,
                    ),
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Rate",
                      style: TextStyle(
                        color: Color.fromRGBO(237, 109, 78, 1),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 16.0,
            ),
            child: Center(
              child: Divider(
                color: Color.fromRGBO(178, 178, 178, 0.3),
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
