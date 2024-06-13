import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ConsultationHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  const ConsultationHeader(
      {super.key, required this.title, required this.subtitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.6,
                child: AutoSizeText(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Color.fromRGBO(26, 25, 25, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: onPressed,
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Color.fromRGBO(237, 109, 78, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color.fromRGBO(94, 92, 92, 1),
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
