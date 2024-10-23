import 'package:get/get.dart';
import 'package:pet_app/Home/views/HomeRoot.dart';
import 'package:pet_app/Utils/globals.dart';
import 'package:pet_app/Welcome/views/WelcomeRoot.dart';

class SplashScreenController extends GetxController {
  var loginStatus = false;

  @override
  void onInit() {
    navigateToWelcomeScreen();
    super.onInit();
  }

  navigateToWelcomeScreen() async {
    loginStatus = await getLoginStatus();
    loginStatus
        ? Get.offAll(
            () => const HomeRoot(),
            transition: Transition.fade,
            duration: const Duration(seconds: 2),
          )
        : Future.delayed(const Duration(seconds: 3), () {
            Get.offAll(
              () => const WelcomeRoot(),
              transition: Transition.fade,
              duration: const Duration(seconds: 2),
            );
          });
  }
}
