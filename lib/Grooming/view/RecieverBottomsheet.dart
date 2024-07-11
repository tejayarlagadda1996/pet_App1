import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/CartRoot.dart';
import 'package:pet_app/Grooming/controller/ReceiverController.dart';
import 'package:pet_app/Utils/RoundButton.dart';
import 'package:pet_app/Utils/Textfieldwidget.dart';

void receiverBottomsheet(BuildContext context) {
  final Receivercontroller receivercontroller = Get.put(Receivercontroller());
  
  showModalBottomSheet(
    constraints: const BoxConstraints(maxHeight: double.infinity),
    isDismissible: true,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return DraggableScrollableSheet(
        expand: false,
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  const Text('Receiver information',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextfieldWidget(
                    controller: receivercontroller.receiverdata[0],
                    placeholderText: 'Receiver Name',
                    obscureText: false,
                    inputType: TextInputType.name,
                  ),
                  TextfieldWidget(
                    controller: receivercontroller.receiverdata[1],
                    placeholderText: 'Address Line 1',
                    obscureText: false,
                    inputType: TextInputType.streetAddress,
                  ),
                  TextfieldWidget(
                    controller: receivercontroller.receiverdata[2],
                    placeholderText: 'Address Line 2',
                    obscureText: false,
                    inputType: TextInputType.streetAddress,
                  ),
                  TextfieldWidget(
                    controller: receivercontroller.receiverdata[3],
                    placeholderText: 'Pincode',
                    obscureText: false,
                    inputType: TextInputType.number,                    
                  ),
                  TextfieldWidget(
                    controller: receivercontroller.receiverdata[4],
                    placeholderText: 'Receiver Number',
                    obscureText: false,
                    inputType: TextInputType.number,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                    child: RoundButton(roundButtonText: 'Proceed to Cart', onPressed: (){
                      Get.to(const CartRoot());
                    }),
                  ),
                  TextButton(onPressed: (){}, child:const Text('+ Add More',style: TextStyle(color: Color.fromRGBO(237, 107, 87 , 1))))
                ],
              ));
        },
      );
    },
  );
}

