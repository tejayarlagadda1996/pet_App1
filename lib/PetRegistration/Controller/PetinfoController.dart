import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/SignUp.dart';
import 'package:pet_app/Login/view/LoginRoot.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';
import 'package:pet_app/PetRegistration/Models/PetinfoModel.dart';
import 'package:pet_app/Utils/globals.dart';

class PetinfoController extends GetxController {
  final List<TextEditingController> textControllers = List.generate(
        6,
        (index) {
          return TextEditingController();
        },
      );

  final List<RxString> dropdownControllers = List.generate(
        6,
        (index) {
          return RxString('');
        },
      );


  var stepperindex= 0.obs;
  var isloading=false.obs;

  void nextstep() {
    if (stepperindex.value < 1) {
      stepperindex.value++;
    }
  }

  void previoussStep() {
    if (stepperindex.value > 0) {
      stepperindex.value--;
    }
  }

  // Future<void> signUp() async {
  //   isloading(true);
  //   final petAppRest = Petapprest<PetDetails>(baseUrl);
  //   final requestBody = {
  //     "age":,
  //     "behaviours": textControllers[1].text,
  //     "breed": textControllers[2].text,
  //     "conditions": city.value,
  //     "gender":textControllers[3].text,
  //     "parentCustomerUUID":,
  //     "petName":textControllers[0].text,
  //     "petTypeId":dropdownControllers[0].value,
  //     "petUUID":,
  //     "symptoms":,
  //     "weight":,
  //   };

  //   final result = await petAppRest.post(
  //       "ws/api/saveCustomerSignUp",
  //       requestBody,
  //       (data) => PetDetails.fromJson(data),
  //       Authentication.basicAuth,
  //       (statusCode) {
  //         print(statusCode);
  //         if (statusCode == 200) {
  //           print(statusCode);
  //           Get.to(() => const LoginRoot(showSignIn: true));
  //           Get.snackbar('Success', 'Sign Up is done password is sent to mail');
  //         }else if(statusCode==400){
  //           Get.snackbar('Failed', 'All Fields must be filled');
  //         }
  //       },
  //     );
  //     print(result);
  //   isloading(false);
  // }

  @override
  void onInit() {
    stepperindex(0);
    super.onInit();
  }

  @override
  void onClose() {
    for (int i = 0; i < 2; i++) {
      textControllers[i].dispose();
    }
    super.onClose();
  }
}
