import 'package:flutter/material.dart';
import 'package:pet_app/Login/model/DynamicTextFieldModel.dart';
import 'package:pet_app/Login/view/DynamicTextfield.dart';

class Receiverinfo extends StatelessWidget {
  Receiverinfo({super.key});

  final dynamicformdata = [
    DynamicTextFieldModel(
      placeholderText: 'Receiver Name',
      obscureText: false,
      actionType: DynamicTextfieldActionType.text
    ),
    DynamicTextFieldModel(
      placeholderText: 'Address Line 1',
      obscureText: false,
      actionType: DynamicTextfieldActionType.text
    ),
    DynamicTextFieldModel(
      placeholderText: 'Address Line 2',
      obscureText: false,
      actionType: DynamicTextfieldActionType.text
    ),
    DynamicTextFieldModel(
      placeholderText: 'Pincode',
      obscureText: false,
      actionType: DynamicTextfieldActionType.number
    ),
    DynamicTextFieldModel(
      placeholderText: 'Receiver Number',
      obscureText: false,
      actionType: DynamicTextfieldActionType.number
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Receiver information',style: TextStyle(fontWeight: FontWeight.bold)),
        DynamicTextField(
          length: dynamicformdata.length,
          onAction:(DynamicTextfieldActionType result){result == DynamicTextfieldActionType.dropdown ? null : null;},
          dynamicModel: dynamicformdata,
          onDataFilled: handleFormFilledData
        )
      ],
    );
  }
  void handleFormFilledData(List filledData) {
  }
}