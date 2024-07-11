import 'package:flutter/material.dart';
import 'package:pet_app/PetRegistration/Controller/PetinfoController.dart';
import 'package:pet_app/Utils/Dropdownwidget.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class Ownerinfo extends StatelessWidget {
  
  final PetinfoController petinfoController = PetinfoController();
  Ownerinfo({super.key});

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
              'Please Enter your Information',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              'assets/ownerimage.png',
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            TextfieldWidget(
              controller: petinfoController.textControllers[2],
              placeholderText: 'Owner name',
              inputType: TextInputType.name,
            ),
            Dropdownwidget(
              selectedValue: petinfoController.dropdownControllers[5],
              items: ['Male', 'Female'],
              placeholderText: 'Gender',
            ),
            TextfieldWidget(
              controller: petinfoController.textControllers[3],
              placeholderText: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            TextfieldWidget(
                controller: petinfoController.textControllers[4],
                inputType: TextInputType.number,
                placeholderText: 'Mobile number'
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: TextFormField(
                  controller: petinfoController.textControllers[5],
                  maxLength: 150,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 246, 241, 1),
                    labelText: 'About',
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(237, 109, 78, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
