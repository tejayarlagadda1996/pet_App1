import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Spalshscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pet App',
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
