import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pet_app/Summery/Payment.dart';
import 'package:pet_app/Utils/Round_button.dart';

class Bottombbuttons extends StatelessWidget {
  const Bottombbuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           SizedBox(
            height: MediaQuery.of(context).size.height*0.125,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('You Pay'),
                  AutoSizeText('Rs. 1338',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.125,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
              child: RoundButton(roundButtonText: 'Procced to Pay', onPressed: (){Get.to(const Payment());}),
            ),
          )
        ],
      ),
    );
  }
}