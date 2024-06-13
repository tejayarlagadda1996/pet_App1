import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  final List<String> highlights;
  const Highlights({
    super.key,
    required this.highlights,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Highlights",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: highlights.map((string) {
              return Row(
                children: [
                  const Icon(
                    Icons.circle,
                    size: 3,
                  ),
                  Text(
                    "  $string",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          const Text(
            "Note that product packaging may slightly vary than what shown in picture",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
