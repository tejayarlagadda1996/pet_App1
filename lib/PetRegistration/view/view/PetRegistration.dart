import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/model/DynamicTextFieldModel.dart';
import 'package:pet_app/Login/view/DynamicTextfield.dart';
import 'package:pet_app/PetRegistration/view/view/Ownerinfo.dart';
import 'package:pet_app/global_widgets/Round_button.dart';

class PetRegistrationScreen extends StatefulWidget {
  const PetRegistrationScreen({super.key});

  @override
  State<PetRegistrationScreen> createState() => _PetRegistrationScreenState();
}

final List<DynamicTextFieldModel> dynamicFields = [
      DynamicTextFieldModel(
        placeholderText: 'Enter pet name',
        obscureText: false,
        actionType: DynamicTextfieldActionType.text,
      ),
      DynamicTextFieldModel(
        placeholderText: 'Select pet type',
        obscureText: false,
        actionType: DynamicTextfieldActionType.dropdown,
        dropdownItems: ['Dog', 'Cat', 'Bird', 'Other'],
      ),
      DynamicTextFieldModel(
        placeholderText: 'Enter pet age',
        obscureText: false,
        actionType: DynamicTextfieldActionType.number,
      ),
      DynamicTextFieldModel(
        placeholderText: 'Enter pet breed',
        obscureText: false,
        actionType: DynamicTextfieldActionType.dropdown,
        dropdownItems: ['labrador','pug','German Shepard'],
      ),
      DynamicTextFieldModel(
        placeholderText: 'Select gender',
        obscureText: false,
        actionType: DynamicTextfieldActionType.dropdown,
        dropdownItems: ['male','Female'],
      ),
      DynamicTextFieldModel(
        placeholderText: 'Symptoms',
        obscureText: false,
        actionType: DynamicTextfieldActionType.dropdown,
        dropdownItems: ['a', 'b','c'],
      ),
      DynamicTextFieldModel(
        placeholderText: 'Behavior',
        obscureText: false,
        actionType: DynamicTextfieldActionType.dropdown,
        dropdownItems: ['m', 'n ','o'],
      ),
    ];

class _PetRegistrationScreenState extends State<PetRegistrationScreen> {
  void handleAction(DynamicTextfieldActionType actionType) {
  }

  void handleDataFilled(List<String> filledData) {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Information',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,0,20,30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(' by providing us the pet information will help us to serve you better',style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
              Image.asset(
                'assets/addpetimage.png',
                width: MediaQuery.of(context).size.width*0.4,
                height: MediaQuery.of(context).size.height*0.4,
                alignment: const Alignment(0, 0),
              ),
              DynamicTextField(
                length: dynamicFields.length,
                onAction: handleAction,
                dynamicModel: dynamicFields,
                onDataFilled: handleDataFilled,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 30),
                child: RoundButton(roundButtonText: 'Next', onPressed: (){Get.to(const Ownerinfo());}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
