import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/views/HomeRoot.dart';
import 'package:pet_app/Login/model/Signin.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';
import 'package:pet_app/PetRegistration/Models/OwnerinfoModel.dart';
import 'package:pet_app/PetRegistration/view/RegistrationRoot.dart';
import 'package:pet_app/Utils/Globals.dart';

class SignInController extends GetxController {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  var isLoading = false.obs;
  var errorMessage = ''.obs;

  signIn() async {
    isLoading(true);
    final petAppRest = Petapprest<SigninModel>(baseUrl);
    final requestBody = {"password": password.text, "username": username.text};
    final result = await petAppRest.post(
      "ws/api/signIn",
      requestBody,
      (data) => SigninModel.fromJson(data),
      Authentication.basicAuth,
      (statusCode) {
        print('statusCode= $statusCode');
        if (statusCode == 200 || statusCode == 201) {
          checkUserProfile();
        } else {
          errorMessage('invalid Login Credentials');
        }
      },
    );
    await storeUserData(result!);
    isLoading(false);
  }

  checkUserProfile() async {
    final parentUuid = await getUserUuid();
    final petAppRest = Petapprest<OwnerInfoModel>(baseUrl);
    final result = await petAppRest.get(
      "ws/api/getCustomerProfile?parentCustomerUUID=$parentUuid",
      (data) => OwnerInfoModel.fromJson(data),
      (status) {},
      Authentication.tokenauth,
    );
    (result!.customerProfile!.parentUserName == null)
        ? Get.offAll(() => Registrationroot())
        : Get.offAll(
            () => const HomeRoot(),
          );
  }

  @override
  void onClose() {
    username.dispose();
    password.dispose();
    super.onClose();
  }
}
