import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/views/HomeRoot.dart';
import 'package:pet_app/Login/view/LoginRoot.dart';
import 'package:pet_app/PetRegistration/Controller/PetinfoController.dart';
import 'package:pet_app/PetRegistration/view/Ownerinfo.dart';
import 'package:pet_app/PetRegistration/view/PetRegistration.dart';
import 'package:pet_app/Utils/RoundButton.dart';

class Registrationroot extends StatelessWidget {
  final PetinfoController petinfoController = Get.put(PetinfoController());
  Registrationroot({super.key});

  onpressingback(){
    if(petinfoController.stepperindex==0.obs){
      Get.offAll(const LoginRoot(showSignIn: true));
    }else if(petinfoController.stepperindex==1.obs){
      petinfoController.previoussStep();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stepper(
            type: StepperType.horizontal,
            currentStep: petinfoController.stepperindex.value,
            onStepContinue: () => petinfoController.nextstep(),
            onStepCancel: () => petinfoController.previoussStep(),
            
            controlsBuilder: (context,ControlsDetails details) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundButton(roundButtonText: 'Back', onPressed:onpressingback),
                  const SizedBox(width: 20),
                  if(petinfoController.stepperindex==0.obs)
                  RoundButton(roundButtonText: 'Next', onPressed: details.onStepContinue),
                  const SizedBox(width: 20),
                  if(petinfoController.stepperindex.value==1)
                  RoundButton(roundButtonText: 'Submit', onPressed: (){Get.offAll(const HomeRoot());})
                ],
              );
            },           
            steps: <Step>[
              Step(
                  title: const Text('Petinformation'),
                  content: Petinfo(),
                  isActive: petinfoController.stepperindex >= 0,
                  state: petinfoController.stepperindex.value>0
                    ?StepState.complete
                    :StepState.indexed
                ),
              Step(
                  title:const Text('Owner information'),
                  content: Ownerinfo(),
                  isActive: petinfoController.stepperindex >= 1,
                  state: petinfoController.stepperindex.value>1
                    ?StepState.complete
                    :StepState.indexed
                )
            ],
          )),
    );
  }
}
