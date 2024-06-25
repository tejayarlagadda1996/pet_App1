import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/Utils/StarBuilder.dart';

class CurrentProductDetails extends StatelessWidget {
  final String name;
  final String description;
  final double rating;
  final int reviews;
  final int price;

  const CurrentProductDetails({
    super.key,
    required this.name,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          // Item Name
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          // Item Description
          AutoSizeText(
            description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              // Dynamic Star Rating
              StarBuilder.buildStars(rating),
              const SizedBox(width: 4), // Spacing between stars and text
              Text(
                "$rating/5",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(width: 4), // Spacing between rating and reviews
              // Reviews
              Text(
                "($reviews)",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          // Price
          Text(
            "\$$price",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(237, 109, 78, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              top: 8,
            ),
            child: Center(
              child: Divider(
                color: Color.fromRGBO(178, 178, 178, 0.3),
                thickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
