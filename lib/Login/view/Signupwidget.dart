import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/Controller/SignUPController.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class Signupwidget extends StatefulWidget {
  const Signupwidget({super.key});

  @override
  State<Signupwidget> createState() => _SignupwidgetState();
}

class _SignupwidgetState extends State<Signupwidget> {
  final SignUpcontroller signupController = SignUpcontroller(); 
  bool isAgreed = false;
  @override
  Widget build(BuildContext context) {
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
            Textfieldwidget(
              controller: signupController.signupdetails[0],
              placeholderText: 'First Name',
              obscureText: false,
            ),
            Textfieldwidget(
              controller: signupController.signupdetails[1],
              placeholderText: 'Email',
              obscureText: false,
            ),
            Textfieldwidget(
              controller: signupController.signupdetails[2],
              placeholderText: 'Mobile number',
              obscureText: false,
            ),
            Textfieldwidget(
              controller: signupController.signupdetails[3],
              placeholderText: 'Password',
              obscureText: true,
              icon: Icons.visibility,
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

  void handleFormFilledData(List<String> filledData) {
    
    
  }
}
