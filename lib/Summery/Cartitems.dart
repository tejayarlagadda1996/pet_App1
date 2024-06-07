import 'package:flutter/material.dart';
import 'package:pet_app/Summery/Cartitem.dart';

class Cartitems extends StatelessWidget {
  const Cartitems({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: List.generate(3, (index) {
        return const Cartitem();
      },),
    );
  }
}