import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/DynamicTextFieldModel.dart';
import 'package:pet_app/Login/view/DynamicTextfield.dart';
import 'package:pet_app/PetRegistration/view/Models/OwnerinfoModel.dart';
import 'package:pet_app/global_widgets/Round_button.dart';
import 'package:pet_app/onboarding/views/home_onboarding.dart';
class Ownerinfo extends StatefulWidget {
  const Ownerinfo({super.key});

  @override
  State<Ownerinfo> createState() => _OwnerinfoState();
}

class _OwnerinfoState extends State<Ownerinfo> {

  final List<DynamicTextFieldModel> dynamicFields = [
      DynamicTextFieldModel(
        placeholderText: 'Owner name',
        obscureText: false,
        actionType: DynamicTextfieldActionType.text,
      ),
      DynamicTextFieldModel(
        placeholderText: 'Gender',
        obscureText: false,
        actionType: DynamicTextfieldActionType.dropdown,
        dropdownItems: [
          'male',
          'Female',
        ],
      ),
      DynamicTextFieldModel(
        placeholderText: 'Email',
        obscureText: false,
        actionType: DynamicTextfieldActionType.text,
      ),
    ];
  
  void handleAction(DynamicTextfieldActionType actionType) {
    // Handle field-specific actions here if needed
  }

  void handleDataFilled(List<String> filledData) {
    final ownerinfo=OwnerinfoModel(aboutowner: filledData[3],email: filledData[2],gender: filledData[1],ownername: filledData[0]);
    print(ownerinfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Owner Information',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Please Enter your Information',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                'assets/ownerimage.png',
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              DynamicTextField(
                  length: dynamicFields.length,
                  onAction: handleAction,
                  dynamicModel: dynamicFields,
                  onDataFilled: handleDataFilled
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: TextEditingController(),
                  maxLength: 150,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    labelText: 'About',
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.blue)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.blue)
                    )
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding:  const EdgeInsets.all(20),
                child: RoundButton(
                  onPressed: (){
                    Get.offAll(const OnBoarding());
                },roundButtonText: 'Submit',)
              )
            ],
          ),
        ),
      ),
    );
  }
}