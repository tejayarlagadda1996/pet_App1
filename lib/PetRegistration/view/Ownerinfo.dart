import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/views/HomeRoot.dart';
import 'package:pet_app/PetRegistration/Controller/PetinfoController.dart';
import 'package:pet_app/Utils/Dropdownwidget.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

class Ownerinfo extends StatefulWidget {
  const Ownerinfo({super.key});

  @override
  State<Ownerinfo> createState() => _OwnerinfoState();
}

class _OwnerinfoState extends State<Ownerinfo> {
  final PetinfoController petinfoController = PetinfoController();


  void handleSubmit() {
    Get.offAll(const HomeRoot());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Owner Information',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
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
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Textfieldwidget(
                controller: petinfoController.textControllers[1],
                placeholderText: 'Owner name',
              ),
              Dropdownwidget(
                selectedValue: petinfoController.dropdownControllers[6],
                items: ['Male', 'Female'],
                placeholderText: 'Gender',
              ),
              Textfieldwidget(
                controller: petinfoController.textControllers[2],
                placeholderText: 'Email',
              ),
              Textfieldwidget(
                controller: petinfoController.textControllers[3],
                placeholderText: 'Mobile number'
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: TextFormField(
                controller: petinfoController.textControllers[4],
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: RoundButton(
                  onPressed: handleSubmit,
                  roundButtonText: 'Submit',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
