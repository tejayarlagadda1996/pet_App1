import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_app/Utils/RoundButton.dart';

class Bottombuttons extends StatelessWidget {
  const Bottombuttons({super.key});

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
                  Text('You Pay'),
                  Text('Rs. 1338',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.125,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
              child: RoundButton(roundButtonText: 'Procced to Pay', onPressed: (){}),
            ),
          )
        ],
      ),
    );
  }
}