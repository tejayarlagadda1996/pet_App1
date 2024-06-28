

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpcontroller extends GetxController{
  
  final List<TextEditingController> signupdetails = List.generate(4, (index) {
    return TextEditingController();
  });

  @override
  void onClose() {
    for(int i=0;i<4;i++){
      signupdetails[i].dispose();
    }
    super.onClose();
  }
}
