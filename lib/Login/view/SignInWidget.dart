import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Login/Controller/SignInController.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class SignInWidget extends StatelessWidget {
  SignInWidget({super.key});

  final SignInController signcontroller = Get.put(SignInController());

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
            Textfieldwidget(
              controller: signcontroller.signdetails[0],
              placeholderText: 'Email/Number',
              obscureText: false,
            ),
            Textfieldwidget(
              controller: signcontroller.signdetails[1],
              placeholderText: 'Password',
              obscureText: true,
              icon: Icons.visibility,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password'))
              ],
            ),
            const SizedBox(height: 8),
            Obx(() {
              return signcontroller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : RoundButton(
                      roundButtonText: 'Sign in',
                      onPressed: () {
                        signcontroller.signIn();
                      },
                    );
            }),
            Obx(() {
              return signcontroller.errorMessage.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        signcontroller.errorMessage.value,
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
