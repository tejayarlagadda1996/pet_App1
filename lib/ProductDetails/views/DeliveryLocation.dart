import 'package:flutter/material.dart';
import 'package:pet_app/PetShop/views/SizedColoredBox.dart';

class DeliveryLocation extends StatelessWidget {
  const DeliveryLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedColoredBox(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Check Delivery Location",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
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
                  child: Text(
                    "Enter Here",
                    style: TextStyle(
                      color: Color.fromRGBO(237, 109, 78, 1),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedColoredBox(),
      ],
    );
  }
}
