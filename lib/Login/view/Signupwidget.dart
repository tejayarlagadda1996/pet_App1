import 'package:flutter/material.dart';
import 'package:pet_app/Login/model/DynamicTextFieldModel.dart';
import 'package:pet_app/Login/view/DynamicTextfield.dart';
import 'package:get/get.dart';
import 'package:pet_app/Utils/Round_button.dart';

class Signupwidget extends StatefulWidget {
  const Signupwidget({super.key});

  @override
  State<Signupwidget> createState() => _SignupwidgetState();
}

class _SignupwidgetState extends State<Signupwidget> {
  bool isAgreed = false;
  @override
  Widget build(BuildContext context) {
    const borderLine = UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.blue),
    );

    final dynamicFormData = [
      DynamicTextFieldModel(
          obscureText: false,
          placeholderText: 'First Name',
          actionType: DynamicTextfieldActionType.text,
          enabledBorder: borderLine),
      DynamicTextFieldModel(
        obscureText: false,
        placeholderText: 'Email',
        actionType: DynamicTextfieldActionType.text,
        enabledBorder: borderLine,
      ),
      DynamicTextFieldModel(
        obscureText: false,
        placeholderText: 'Mobile',
        actionType: DynamicTextfieldActionType.number,
        enabledBorder: borderLine,
      ),
      DynamicTextFieldModel(
        obscureText: true,
        placeholderText: 'Password',
        actionType: DynamicTextfieldActionType.number,
        enabledBorder: borderLine,
      ),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Sign Up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            DynamicTextField(
              dynamicModel: dynamicFormData,
              length: dynamicFormData.length,
              onAction: (DynamicTextfieldActionType result) {
                result == DynamicTextfieldActionType.dropdown ? null : null;
              },
              onDataFilled: handleFormFilledData,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isAgreed,
                    onChanged: (bool? value) {
                      setState(() {
                        isAgreed = value ?? false;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 200,
                    child: Text('I agree to the terms and conditions',textAlign: TextAlign.start,)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundButton(
                roundButtonText: 'Sign Up',
                onPressed: (){
                  Get.back();
                  Get.snackbar('Succesful', 'please login to your account',backgroundColor: Colors.green);
                }
              )
            )
          ],
        ),
      ),
    );
  }

  void handleFormFilledData(List<RxString> filledData) {
    
    
  }
}
