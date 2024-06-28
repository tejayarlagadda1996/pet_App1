import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/PetRegistration/Controller/PetinfoController.dart';
import 'package:pet_app/PetRegistration/view/Ownerinfo.dart';
import 'package:pet_app/Utils/Dropdownwidget.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class PetRegistrationScreen extends StatefulWidget {
  const PetRegistrationScreen({super.key});

  @override
  State<PetRegistrationScreen> createState() => _PetRegistrationScreenState();
}

class _PetRegistrationScreenState extends State<PetRegistrationScreen> {
  final PetinfoController petinfoController = PetinfoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pet Information',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
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
                'By providing us the pet information, it will help us to serve you better.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                'assets/addpetimage.png',
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Textfieldwidget(
                controller: petinfoController.textControllers[0],
                placeholderText: 'Enter pet name',
              ),
              Dropdownwidget(
                selectedValue: petinfoController.dropdownControllers[0],
                items: ['Dog', 'Cat', 'Bird', 'Other'],
                placeholderText: 'Select pet type',
              ),
              Dropdownwidget(
                items: ['1','2','3'],
                placeholderText: 'Enter Pet Age',
                selectedValue: petinfoController.dropdownControllers[1],
              ),
              Dropdownwidget(
                selectedValue: petinfoController.dropdownControllers[2],
                items: ['Labrador', 'Pug', 'German Shepherd'],
                placeholderText: 'Enter pet breed',
              ),
              Dropdownwidget(
                selectedValue: petinfoController.dropdownControllers[3],
                items: ['Male', 'Female'],
                placeholderText: 'Select gender',
              ),
              Dropdownwidget(
                selectedValue: petinfoController.dropdownControllers[4],
                items: ['Symptom A', 'Symptom B', 'Symptom C'],
                placeholderText: 'Symptoms',
              ),
              Dropdownwidget(
                selectedValue: petinfoController.dropdownControllers[5],
                items: ['Behavior A', 'Behavior B', 'Behavior C'],
                placeholderText: 'Behavior',
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 30),
                child: RoundButton(
                  roundButtonText: 'Next',
                  onPressed: (){
                    Get.to(const Ownerinfo());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
