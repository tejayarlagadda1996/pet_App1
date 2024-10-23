import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Spalshscreen/SplashScreenController.dart';

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});
  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset("assets/splashimage.png"),
      )),
    );
  }
}