import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/Controller/ForgotpasswordController.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class Forgotpasswordbottomsheet extends StatelessWidget {
  Forgotpasswordbottomsheet({super.key});

  final Forgotpasswordcontroller forgotpasswordcontroller =
      Forgotpasswordcontroller();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Image.asset(
          'assets/welcome_pawprints.png',
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
                    "Please Enter Your Registered Email to Recover Password",
                    style: TextStyle(fontWeight: FontWeight.w700))),
            TextfieldWidget(
                controller: forgotpasswordcontroller.email,
                placeholderText: 'Recovery Email',
                inputType: TextInputType.emailAddress),
            const SizedBox(height: 20),
            Obx(() => forgotpasswordcontroller.isLoading.value
                ? CircularProgressIndicator()
                : RoundButton(
                    roundButtonText: 'Recover Password',
                    onPressed: () {
                      print(forgotpasswordcontroller.email.text);
                      forgotpasswordcontroller.forgotPassword();
                    })),
          ],
        ),
      ),
    ]);
  }
}
