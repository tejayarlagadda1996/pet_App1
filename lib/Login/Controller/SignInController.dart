import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pet_app/Login/view/OtpScreen.dart';

class SignInController extends GetxController{
  RxString emailOrNumber = ''.obs;
  RxString password = ''.obs;


  void updateEmailOrNumber(String value) {
    emailOrNumber.value = value;
  }

  void updatePassword(String value) {
    password.value = value;
  }

  Future<void> signIn() async{
    const url = 'http://localhost:3000/users';
    final response = await http.get(Uri.parse(url) 
    );
    if (response.statusCode == 200) {
        final users = jsonDecode(response.body) as List;

        final user = users.firstWhere(
          (user) =>
              user['emailOrNumber'] == emailOrNumber.value &&
              user['password'] == password.value,
          orElse: () => null,
        );

        if (user != null) {
          Get.to(const OtpScreen());
        } else {
          Get.snackbar('Error', 'Invalid email/number or password');
        }
      } else {
        Get.snackbar('Error', 'Failed to connect to server');
      }

  }
}