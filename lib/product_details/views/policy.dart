import 'package:flutter/material.dart';
import 'package:pet_app/pet_shop/views/sized_colored_box.dart';

class Policy extends StatelessWidget {
  const Policy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedColoredBox(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.asset("assets/100%_original.png"),
                  const Text(
                    " 100% Original",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const Text(
                "   | ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(204, 204, 204, 1),
                ),
              ),
              Row(
                children: [
                  Image.asset("assets/easy_returnimage.png"),
                  const Text(
                    " Easy Return Policy",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedColoredBox(),
      ],
    );
  }
}
