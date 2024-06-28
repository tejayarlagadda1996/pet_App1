import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/controller/ReceiverController.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class Receiverinfo extends StatelessWidget {
  Receiverinfo({super.key});

  final Receivercontroller receivercontroller = Receivercontroller();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Receiver information',style: TextStyle(fontWeight: FontWeight.bold)),
        Textfieldwidget(
          controller: receivercontroller.receiverdata[0],
          placeholderText: 'Receiver Name',
          obscureText: false,
        ),
        Textfieldwidget(
          controller: receivercontroller.receiverdata[1],
          placeholderText: 'Address Line 1',
          obscureText: false,
        ),
        Textfieldwidget(
          controller: receivercontroller.receiverdata[2],
          placeholderText: 'Address Line 2',
          obscureText: false,
        ),
        Textfieldwidget(
          controller: receivercontroller.receiverdata[3],
          placeholderText: 'Pincode',
          obscureText: false,
        ),
        Textfieldwidget(
          controller: receivercontroller.receiverdata[4],
          placeholderText: 'Receiver Number',
          obscureText: false,
        ),
      ],
    );
  }
  void handleFormFilledData(List filledData) {
  }
}