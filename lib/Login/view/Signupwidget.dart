import 'package:flutter/material.dart';
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
              controller: signupController.parentName,
              placeholderText: 'Parent Name',
              obscureText: false,
              inputType: TextInputType.name,
            ),
            TextfieldWidget(
              controller: signupController.email,
              placeholderText: 'Email',
              obscureText: false,
              inputType: TextInputType.emailAddress,
            ),
            TextfieldWidget(
              controller: signupController.mobile,
              placeholderText: 'Mobile number',
              obscureText: false,
              inputType: TextInputType.number,
            ),
            TextfieldWidget(
              controller: signupController.placesSearch,
              placeholderText: 'Enter your address',
              inputType: TextInputType.streetAddress,
              onChanged: (p0) {
                signupController.getplaces(p0);
              },
            ),
            ListView.builder(
              itemCount: signupController.placeslist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(signupController.placeslist[index]['description']),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: signupController.isagreed.value,
                    onChanged: (bool? value) {                      
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
}
