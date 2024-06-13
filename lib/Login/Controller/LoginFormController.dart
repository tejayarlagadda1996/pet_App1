import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class LoginFormController extends GetxController {

  final int length;
  LoginFormController(this.length);

  // Define Rx variables for form data
  var dropdownValues = <RxString>[];
  var textValues = <TextEditingController>[];

  @override
  void onInit() {
    // Initialize Rx variables with default values
    dropdownValues.assignAll(List.generate(length, (index) => ''.obs));
    textValues.assignAll(List.generate(length, (index) => TextEditingController()));
    super.onInit();
  }

  // Method to update dropdown value
  void updateDropdownValue(int index, String value) {
    dropdownValues[index].value = value;
  }

  @override
  void dispose(){
    for(int index=0;index<=length-1;index++){
      textValues[index].dispose();
    }
    super.dispose();
  }
}
