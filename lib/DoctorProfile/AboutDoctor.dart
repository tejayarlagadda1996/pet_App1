import 'package:flutter/material.dart';

class AboutDoctor extends StatelessWidget {
  final String doctorInfo;
  const AboutDoctor({super.key, required this.doctorInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 30, 14, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About the Doctor',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                doctorInfo,
                style: const TextStyle(fontSize: 13, color: Colors.black54),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: const Color.fromRGBO(255, 248, 247, 1),
          child: const SizedBox(
            height: 8,
            child: Center(),
          ),
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
