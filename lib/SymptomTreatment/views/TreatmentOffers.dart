import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class TreatmentOffers extends StatelessWidget {
  const TreatmentOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 12 , 18, 12),
      child: DottedBorder(
        color: const Color.fromRGBO(237, 109, 78, 1), // Color for the dotted border
        strokeWidth: 1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        dashPattern: const [8, 4], // Length of the dash and the gap
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.local_offer,
                    color: Color.fromRGBO(237, 109, 78, 1),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Offers for you',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Color.fromRGBO(237, 109, 78, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}