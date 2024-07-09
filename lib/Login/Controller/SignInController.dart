import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/Usermodel.dart';
import 'package:pet_app/Login/view/OtpScreen.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';

class SignInController extends GetxController {
  final List<TextEditingController> signdetails = List.generate(2, (index) {
    return TextEditingController();
  });

  var isLoading = false.obs;
  var errorMessage = ''.obs;

  Future<void> signIn()async{

    if (signdetails[0].text.isEmpty || signdetails[1].text.isEmpty) {
      errorMessage('Please fill in all fields.');
    }

    final rest = Petapprest<User>('http://localhost:3000/');
    final result = await rest.get('users?username=${signdetails[0].text}', (json) => (json).map((item) => User.fromJson(item)),(p0) => print(p0));
    if(result==null){
      errorMessage('username not found');
    }
    else if(result.password==signdetails[1].text){
      Get.to(const OtpScreen());
    }else{
      errorMessage("Password doesn't match not found");
    }
  }


  @override
  void onClose() {
    for (int i = 0; i < 2; i++) {
      signdetails[i].dispose();
    }
    super.onClose();
  }
}
