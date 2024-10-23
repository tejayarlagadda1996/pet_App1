import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/SignUp.dart';
import 'package:pet_app/Login/view/LoginRoot.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';
import 'package:pet_app/Utils/globals.dart';

class SignUpcontroller extends GetxController {
  
  final TextEditingController email = TextEditingController();
  final TextEditingController mobile = TextEditingController();
  final TextEditingController parentName = TextEditingController();
  final TextEditingController placesSearch = TextEditingController();

  var isagreed = false.obs;
  var placeslist = [].obs;
  final googleapikey = 'AIzaSyBz4GX04-KDeVRt0tf1gnauS_23k-9ze4U';
  var city = ''.obs;
  var isloading = false.obs;

  getplaces(String query) async {
    final petAppRest = Petapprest(placesapi);
    final prediction = await petAppRest.get(
        "/autocomplete/json?input=$query&key=$googleapikey",
        (data) {
          placeslist.value = data['predictions'];
          print(placeslist.value);
        },
        (statusCode) {},
        Authentication.basicAuth        
    );
  }

  Future<void> signUp() async {
    isloading(true);
    final petAppRest = Petapprest<SignUp>(baseUrl);
    final requestBody = {
      "parentName": parentName.text,
      "email": email.text,
      "mobile": mobile.text,
      "city": city.value
    };

    final result = await petAppRest.post(
        "ws/api/saveCustomerSignUp",
        requestBody,
        (data) => SignUp.fromJson(data),
        Authentication.basicAuth,
        (statusCode) {
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
    email.dispose();
    parentName.dispose();
    mobile.dispose();
    super.onClose();
  }
}
