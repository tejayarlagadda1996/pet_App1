import 'dart:async';

import 'package:get/get.dart';
import 'package:pet_app/Auth/Authencation.dart';

class Authcontroller extends GetxController{
  final AuthStream authStream = AuthStream();
  late StreamSubscription authsubscription;
  var isLoggedIn = false.obs;

  Authcontroller(){
    authsubscription=authStream.loginStatus.listen((status){
      isLoggedIn.value= status;
    });
  }

  void changeloginstatus(){
    authStream.changeLoginStatus();
  }

  @override
  void onClose(){
    authsubscription.cancel();
    super.onClose();
  }
}