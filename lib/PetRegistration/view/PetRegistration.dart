import 'package:flutter/material.dart';
import 'package:pet_app/PetRegistration/Controller/PetinfoController.dart';
import 'package:pet_app/Utils/Dropdownwidget.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class Petinfo extends StatelessWidget {
  
  final PetinfoController petinfoController = PetinfoController();
  Petinfo({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            TextfieldWidget(
              controller: petinfoController.textControllers[0],
              placeholderText: 'Enter pet name',
              inputType: TextInputType.name,
            ),
            Dropdownwidget(
              selectedValue: petinfoController.dropdownControllers[0],
              items: const ['Dog', 'Cat', 'Bird', 'Other'],
              placeholderText: 'Select pet type',
            ),
            TextfieldWidget(
              controller: petinfoController.textControllers[1],
              placeholderText: 'Pet weight',
              inputType: TextInputType.number,
            ),
            Dropdownwidget(
              selectedValue: petinfoController.dropdownControllers[1],
              items: const ['Labrador', 'Pug', 'German Shepherd'],
              placeholderText: 'Enter pet breed',
            ),
            Dropdownwidget(
              selectedValue: petinfoController.dropdownControllers[2],
              items: const ['Male', 'Female'],
              placeholderText: 'Select gender',
            ),
            Dropdownwidget(
              selectedValue: petinfoController.dropdownControllers[3],
              items: const ['Symptom A', 'Symptom B', 'Symptom C'],
              placeholderText: 'Symptoms',
            ),
            Dropdownwidget(
              selectedValue: petinfoController.dropdownControllers[4],
              items: const ['Behavior A', 'Behavior B', 'Behavior C'],
              placeholderText: 'Behavior',
            ),
          ],
        ),
      ),
    );
  }
}
