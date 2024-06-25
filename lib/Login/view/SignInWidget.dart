import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/DynamicTextFieldModel.dart';
import 'package:pet_app/Login/view/DynamicTextfield.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Login/Controller/SignInController.dart';
import 'OtpScreen.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final SignInController controller = Get.put(SignInController());

  final dynamicFormData = [
    DynamicTextFieldModel(
      placeholderText: 'Email/Number',
      obscureText: false,
      actionType: DynamicTextfieldActionType.text,
    ),
    DynamicTextFieldModel(
      obscureText: true,
      placeholderText: 'Password',
      actionType: DynamicTextfieldActionType.text,
      icon: Icons.visibility,
    ),
  ];

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
            DynamicTextField(
              dynamicModel: dynamicFormData,
              length: dynamicFormData.length,
              onAction: (DynamicTextfieldActionType result) {
                result == DynamicTextfieldActionType.dropdown ? null : null;
              },
              onDataFilled: handleFormFilledData,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password'))
              ],
            ),
            const SizedBox(height: 8),
            RoundButton(
              roundButtonText: 'Sign in',
              onPressed: (){
                Get.to(const OtpScreen());
            })
          ],
        ),
      ),
    );
  }

  void handleFormFilledData(List<RxString> filledData) {
    controller.emailOrNumber = filledData[0];
    controller.password = filledData[1];
  }
}
