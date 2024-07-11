import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/Signin.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';
import 'package:pet_app/PetRegistration/view/RegistrationRoot.dart';
import 'package:pet_app/Utils/Globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInController extends GetxController {
  final List<TextEditingController> signInDetails = List.generate(2, (index) {
    return TextEditingController();
  });

  var isLoading = false.obs;
  var errorMessage = ''.obs;

  Future<void> signIn() async {
    isLoading(true);
    final petAppRest = Petapprest<SignIn>(baseUrl);
    final requestBody = {
      "password": signInDetails[1].text,
      "username": signInDetails[0].text
    };
    final result = await petAppRest.post(
      "ws/api/signIn",
      requestBody,
      (data) => SignIn.fromJson(data),
      Authentication.basicAuth,
      (statusCode) {
        if (statusCode == 200) {
          // storeUserData(result., userUUID);
          Get.offAll(() => Registrationroot());
          print(statusCode);
        } else if (statusCode == 401) {
          print('invalid Login Credentials');
          errorMessage('invalid Login Credentials');
        }
      },
    );
    print(result);
    isLoading(false);
  }

  Future<void> storeUserData(String token, String userUUID) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    await prefs.setString('userUUID', userUUID);
  }

  @override
  void onClose() {
    for (var controller in signInDetails) {
      controller.dispose();
    }
    super.onClose();
  }
}
