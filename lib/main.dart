import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/global_widgets/payment/payment_confirmed.dart';
import 'package:pet_app/welcome/views/home_welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Pet App',
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
