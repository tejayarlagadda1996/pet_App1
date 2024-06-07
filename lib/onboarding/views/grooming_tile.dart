import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/rect_button.dart';

class GroomingTile extends StatelessWidget {
  final String serviceName;
  final int discount;
  final double rating;
  final int reviews;
  final String duration;
  final List<String> services;
  final int price;

  const GroomingTile({
    super.key,
    required this.serviceName,
    required this.discount,
    required this.rating,
    required this.reviews,
    required this.duration,
    required this.services,
    required this.price,
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
                              serviceName,
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
                          "Get $discount% Instant off on this package",
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
                              "$rating",
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
                              " $reviews Reviews",
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
                              " $duration",
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
                children: services.asMap().entries.map((entry) {
                  final index = entry.key;
                  final service = entry.value;
                  final isLast = index == services.length - 1;
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
                      "\$$price",
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
                      onPressed: () {}, // add functionality
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
