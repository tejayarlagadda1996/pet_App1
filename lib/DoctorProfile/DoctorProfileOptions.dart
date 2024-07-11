import 'package:flutter/material.dart';

class DoctorProfileOptions extends StatelessWidget {
  final String optionText;
  final void Function() onClicked;

  const DoctorProfileOptions(
      {super.key, required this.optionText, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                optionText,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_right_outlined),
                onPressed: onClicked,
              ),
            ],
          ),
        ),
        const Divider(
          color: Color.fromRGBO(223, 223, 223, 1),
        )
      ],
    );
  }
}
