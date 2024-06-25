import 'package:flutter/material.dart';

class StarBuilder extends StatelessWidget {
  const StarBuilder({super.key});

  static Widget buildStars(double rating) {
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;
    int emptyStars = (5 - fullStars - (hasHalfStar ? 1 : 0)).floor();

    List<Widget> stars = [];

    for (int i = 0; i < fullStars; i++) {
      stars.add(const Icon(
        Icons.star,
        color: Color.fromRGBO(237, 109, 78, 1),
        size: 14,
      ));
    }

    if (hasHalfStar) {
      stars.add(const Icon(
        Icons.star_half,
        color: Color.fromRGBO(237, 109, 78, 1),
        size: 14,
      ));
    }

    for (int i = 0; i < emptyStars; i++) {
      stars.add(const Icon(
        Icons.star_border,
        color: Color.fromRGBO(237, 109, 78, 1),
        size: 14,
      ));
    }
    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
