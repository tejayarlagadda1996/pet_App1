import 'package:get/get.dart';
import 'package:pet_app/Auth/Authencation.dart';

class Authcontroller extends GetxController{
  final AuthStream authStream = AuthStream();
  var isLoggedIn = false.obs;

  Authcontroller(){
    authStream.loginStatus.listen((status){
      isLoggedIn.value= status;
    });
  }

  void changeloginstatus(){
    authStream.changeLoginStatus();
  }

  @override
  void onClose(){
    authStream.dispose();
    super.onClose();
  }
}