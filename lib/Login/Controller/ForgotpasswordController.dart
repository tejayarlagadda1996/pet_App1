// 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/ForgotPassword.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';
import 'package:pet_app/Utils/globals.dart';

class Forgotpasswordcontroller extends GetxController{
  final email = TextEditingController();
  var isLoading=false.obs;

  Future<void> forgotPassword()async{
    isLoading(true);
    final petapprest = Petapprest<Forgotpassword>(baseUrl);
    final result = await petapprest.get(
      'ws/api/forgotPassword?email=${email.text}',
      (data)=>Forgotpassword.fromjson(data),
      (statusCode){
        if(statusCode==200||statusCode==201){
          print(statusCode);
        }
      }
    );
    print(result!.responsedata);
    if(result.responsedata=="SUCCESS"){
      Get.back();
      Get.snackbar('Success', result.message);
      isLoading(false);
    }
    

  }
}