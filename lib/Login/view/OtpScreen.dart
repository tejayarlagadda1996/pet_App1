import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/PetRegistration/view/view/PetRegistration.dart';
import 'package:pet_app/global_widgets/Round_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpControllers = List<TextEditingController>.generate(
      4, (index) => TextEditingController());
  final _otpFocusNodes = List<FocusNode>.generate(4, (index) => FocusNode());

  void _handleOtpChange(String value, int index) {
    if (value.length == 1 && index < 3) {
      _otpFocusNodes[index].unfocus();
      FocusScope.of(context).requestFocus(_otpFocusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      _otpFocusNodes[index].unfocus();
      FocusScope.of(context).requestFocus(_otpFocusNodes[index - 1]);
    }
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var focusNode in _otpFocusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
        backgroundColor: const Color.fromARGB(246, 230, 118, 61),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Verification',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(30, 33, 68, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'We have sent OTP to verify your account. Please check your mobile number 99999-99999',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _otpControllers[index],
                    focusNode: _otpFocusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      counterText: '',
                    ),
                    onChanged: (value) => _handleOtpChange(value, index),
                  ),
                );
              }),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: RoundButton(
                  roundButtonText: 'Submit OTP',
                  onPressed: () {
                    Get.to(const PetRegistrationScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
