import 'package:flutter/material.dart';
import 'package:pet_app/Home/views/RectButton.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:pet_app/Models/lab_test.dart';

class HomeLabTestTile extends StatelessWidget {
  final LabTest labtest;

  const HomeLabTestTile({
    super.key,
    required this.labtest
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 10, bottom: 12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
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
              // Test Name
              Text(
                labtest.labTestName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),

              // Description
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: AutoSizeText(
                  labtest.labTestDescription,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[500],
                  ),
                  maxLines: 3,
                  // maxFontSize: 11,
                  // minFontSize: 11,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 6),

              // Parameters
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Color.fromRGBO(237, 109, 78, 1),
                    size: 14,
                  ),
                  Text(
                    " ${labtest.labTestParameters} Parameters",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Price and Book Now Button
              Row(
                children: [
                  Column(
                    children: [
                      // Original Price
                      Text(
                        "\u20B9 ${labtest.labTestOriginalPrice}",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                      // Discounted Price
                      Text(
                        "\\u20B9 ${labtest.labTestDiscountedPrice}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(237, 109, 78, 1),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  // Book Now Button
                  RectButton(
                    RectButtonText: "Book Now",
                    onPressed: () {}, // add functionality
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
