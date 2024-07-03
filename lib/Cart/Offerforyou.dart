import 'package:flutter/material.dart';

class Offerforyou extends StatelessWidget {
  const Offerforyou({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image.asset('assets/offers.png',fit: BoxFit.fitHeight,),
      ),
    );
  }
}
