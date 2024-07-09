import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Welcome/views/WelcomeRoot.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    navigateToWelcomeScreen();
  }

  navigateToWelcomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(
        ()=>const WelcomeRoot(),
        transition: Transition.fade,
        duration: const Duration(seconds: 2),
      );
    });
  }

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