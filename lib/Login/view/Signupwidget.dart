import 'package:flutter/material.dart';
import 'package:pet_app/Login/Controller/SignUPController.dart';
import 'package:pet_app/Utils/Dropdownwidget.dart';
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
            TextfieldWidget(
              controller: signupController.signUpdetails[0],
              placeholderText: 'Parent Name',
              obscureText: false,
              inputType: TextInputType.name,
            ),
            TextfieldWidget(
              controller: signupController.signUpdetails[1],
              placeholderText: 'Email',
              obscureText: false,
              inputType: TextInputType.emailAddress,
            ),
            TextfieldWidget(
              controller: signupController.signUpdetails[2],
              placeholderText: 'Mobile number',
              obscureText: false,
              inputType: TextInputType.number,
            ),
            Dropdownwidget(
              placeholderText: 'City',
              selectedValue: signupController.city,
              items: const['Hyderabad','Vijayawada','Banglore','Chennai'],
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
                  signupController.signUp();
                  // Get.back();
                  // Get.snackbar('Succesful', 'please login to your account',backgroundColor: Colors.green);
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
