

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{

 final List<TextEditingController> signdetails = List.generate(2, (index) {
   return TextEditingController();
 });

 @override
  void onClose() {
    for(int i=0;i<2; i++){
      signdetails[i].dispose();
    }
    super.onClose();
  }
  
}