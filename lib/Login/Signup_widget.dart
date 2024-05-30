import 'package:flutter/material.dart';
import 'package:pet_app/Login/DynamicTextFieldModel.dart';
import 'package:pet_app/Login/DynamicTextfield.dart';

class Signupwidget extends StatefulWidget {
  const Signupwidget({super.key});

  @override
  State<Signupwidget> createState() => _SignupwidgetState();
}

class _SignupwidgetState extends State<Signupwidget> {
  @override
  Widget build(BuildContext context) {
    bool isAgreed = false;

    const borderLine = OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: Colors.blue),
    );

    final dynamicFormData = [
      DynamicTextFieldModel(
          obscureText: false,
          placeholderText: 'First Name',
          actionType: DynamicTextfieldActionType.text,
          enabledBorder: borderLine,
          focusedBorder: borderLine),
      DynamicTextFieldModel(
        obscureText: false,
        placeholderText: 'Email',
        actionType: DynamicTextfieldActionType.text,
        enabledBorder: borderLine,
        focusedBorder: borderLine,
      ),
      DynamicTextFieldModel(
        obscureText: false,
        placeholderText: 'Mobile',
        actionType: DynamicTextfieldActionType.number,
        enabledBorder: borderLine,
        focusedBorder: borderLine,
      ),
      DynamicTextFieldModel(
        obscureText: true,
        placeholderText: 'Password',
        actionType: DynamicTextfieldActionType.number,
        enabledBorder: borderLine,
        focusedBorder: borderLine,
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
                  const Text('I agree to the terms and conditions'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Sign up')),
            )
          ],
        ),
      ),
    );
  }

  void handleFormFilledData(List<String> filledData) {
    print(filledData);
  }
}
