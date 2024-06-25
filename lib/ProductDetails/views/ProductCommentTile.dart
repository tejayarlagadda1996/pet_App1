import 'package:flutter/material.dart';
import 'package:pet_app/Utils/StarBuilder.dart';

class ProductCommentTile extends StatelessWidget {
  final String userImg;
  final String userName;
  final String commentDate;
  final double commentRating;
  final String commentText;

  const ProductCommentTile({
    super.key,
    required this.userImg,
    required this.userName,
    required this.commentDate,
    required this.commentRating,
    required this.commentText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userImg),
                radius: 20,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  StarBuilder.buildStars(commentRating)
                ],
              ),
              const Spacer(),
              Text(
                commentDate,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            commentText,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
