import 'package:flutter/material.dart';

class DataPrivacy extends StatelessWidget {
  const DataPrivacy({super.key});

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
        SizedBox(height: 10),
        const Padding(
          padding: const EdgeInsets.fromLTRB(14,0,14,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Data & Privacy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 150, 150, 150),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
