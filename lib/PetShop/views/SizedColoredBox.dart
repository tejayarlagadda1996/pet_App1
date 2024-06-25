import 'package:flutter/material.dart';

class SizedColoredBox extends StatelessWidget {
  const SizedColoredBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 248, 247, 1),
      child: const SizedBox(
        height: 10,
        child: Center(),
      ),
    );
  }
}
