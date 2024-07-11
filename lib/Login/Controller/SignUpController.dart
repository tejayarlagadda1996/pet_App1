import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/SignUp.dart';
import 'package:pet_app/Login/view/LoginRoot.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';
import 'package:pet_app/Utils/globals.dart';

class SignUpcontroller extends GetxController {
  final List<TextEditingController> signUpdetails = List.generate(3, (index) {
    return TextEditingController();
  });

  var city = ''.obs;
  var isloading = false.obs;

  Future<void> signUp() async {
    isloading(true);
    final petAppRest = Petapprest<SignUp>(baseUrl);
    final requestBody = {
      "parentName": signUpdetails[0].text,
      "email": signUpdetails[1].text,
      "mobile": signUpdetails[2].text,
      "city": city.value
    };

    final result = await petAppRest.post(
        "ws/api/saveCustomerSignUp",
        requestBody,
        (data) => SignUp.fromJson(data),
        Authentication.basicAuth,
        (statusCode) {
          print(statusCode);
          if (statusCode == 200) {
            print(statusCode);
            Get.to(() => const LoginRoot(showSignIn: true));
            Get.snackbar('Success', 'Sign Up is done password is sent to mail');
          }else if(statusCode==400){
            Get.snackbar('Failed', 'All Fields must be filled');
          }
        },
      );
      print(result);
    isloading(false);
  }

  @override
  void onClose() {
    for (int i = 0; i < 4; i++) {
      signUpdetails[i].dispose();
    }
    super.onClose();
  }
}
