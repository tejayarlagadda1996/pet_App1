import 'package:flutter/material.dart';

class TreatmentCharge extends StatelessWidget {
  const TreatmentCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromRGBO(255, 248, 247, 1),
          child: SizedBox(
            height: 8,
            child: Container(), // to display the color
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // edit this
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      "Consultation Charge",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Color.fromRGBO(26, 25, 25, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    "500/-",
                    style: TextStyle(
                      color: Color.fromRGBO(237, 109, 78, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const Text(
                "Get upto Rs. 120 off on this consultation",
                style: const TextStyle(
                  color: Color.fromRGBO(94, 92, 92, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 14),
            ],
          ),
        ),
        Container(
          color: const Color.fromRGBO(255, 248, 247, 1),
          child: SizedBox(
            height: 8,
            child: Container(), // to display the color
          ),
        ),
      ],
    );
  }
}
