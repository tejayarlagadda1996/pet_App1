import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PetinfoController extends GetxController {
  final List<TextEditingController> textControllers = List.generate(
        5,
        (index) {
          return TextEditingController();
        },
      );

  final List<RxString> dropdownControllers = List.generate(
        7,
        (index) {
          return RxString('');
        },
      );

  @override
  void onClose() {
    for (int i = 0; i < 2; i++) {
      textControllers[i].dispose();
    }
    super.onClose();
  }
}
