import 'package:flutter/material.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';
import 'package:pet_app/Home/views/RectButton.dart';
import 'package:pet_app/Models/GroomingPackage.dart';

class HomeGroomingTile extends StatelessWidget {
  
  final GroomingPackage package;

  const HomeGroomingTile({
    super.key,
    required this.package
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 10, bottom: 12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Service Name
                            Text(
                              package.packageName,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            Expanded(child: Container()),

                            TextButton(
                              child: const Text(
                                "Edit Package",
                                style: TextStyle(
                                  color: Color.fromRGBO(237, 109, 78, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {}, // add functionality
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        // Discount offered
                        Text(
                          "Get ${package.packageDiscount}% Instant off on this package",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          // rating
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color.fromRGBO(237, 109, 78, 1),
                              size: 14,
                            ),
                            Text(
                              "${package.packageRating}",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                            const SizedBox(width: 12),

                            // reviews
                            const Icon(
                              Icons.circle,
                              color: Color.fromRGBO(237, 109, 78, 1),
                              size: 14,
                            ),
                            Text(
                              " ${package.packageReviews} Reviews",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                            const SizedBox(width: 10),

                            // time provided
                            const Icon(
                              Icons.access_time_filled_rounded,
                              color: Color.fromRGBO(237, 109, 78, 1),
                              size: 14,
                            ),
                            Text(
                              " ${package.packageTime}",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.grey[200],
                ),
              ),

              // Services
              Wrap(
                children: package.packageDetails.asMap().entries.map((entry) {
                  final index = entry.key;
                  final service = entry.value;
                  final isLast = index == package.packageDetails.length - 1;
                  return Text(
                    isLast ? " $service" : " $service •",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  );
                }).toList(),
              ),

              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    // price
                    Text(
                      "\$${package.packagePrice}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(237, 109, 78, 1),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(child: Container()),
                    RectButton(
                      RectButtonText: "Book Now",
                      onPressed: () {
                        Cartcontroller().additemtoCart(Producttype.packages,package);
                      }, // add functionality
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
