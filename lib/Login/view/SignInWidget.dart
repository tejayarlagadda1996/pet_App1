import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/view/ForgetPasswordBottomSheet.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Login/Controller/SignInController.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class SignInWidget extends StatelessWidget {
  SignInWidget({super.key});

  final SignInController signIncontroller = Get.put(SignInController());
  final RxBool _isPasswordVisible = false.obs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Sign In',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            TextfieldWidget(
              controller: signIncontroller.signInDetails[0],
              placeholderText: 'Email/Number',
              obscureText: false,
              inputType: TextInputType.emailAddress,
            ),
            Obx(() {
              return TextfieldWidget(
                controller: signIncontroller.signInDetails[1],
                placeholderText: 'Password',
                obscureText: !_isPasswordVisible.value,
                inputType: TextInputType.text,
                icon: _isPasswordVisible.value ? Icons.visibility_off : Icons.visibility,
                onIconTap: () {
                  _isPasswordVisible.value = !_isPasswordVisible.value;
                },
              );
            }),
           Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    Get.bottomSheet(
                      backgroundColor: Colors.white,
                      Forgotpasswordbottomsheet()
                    );
                  },
                  child:const Text('Forgot Password')
                )
                
              ],
            ),
            const SizedBox(height: 8),
            Obx(() {
              return signIncontroller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : RoundButton(
                      roundButtonText: 'Sign in',
                      onPressed: () {
                        signIncontroller.signIn();
                      },
                    );
            }),
            Obx(() {
              return signIncontroller.errorMessage.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        signIncontroller.errorMessage.value,
                        style:const TextStyle(color: Colors.red),
                      ),
                    )
                  : Container();
            }),
          ],
        ),
      ),
    );
  }
}
