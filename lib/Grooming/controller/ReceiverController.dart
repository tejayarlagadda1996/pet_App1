import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Receivercontroller extends GetxController{

  final List<TextEditingController> receiverdata = List.generate(5, (index) {
    return TextEditingController();
  });

  @override
  void onClose() {
    for(int i=0;i<5; i++){
      receiverdata[i].dispose();
    }
    super.onClose();
  }

}
