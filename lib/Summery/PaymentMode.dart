import 'package:flutter/material.dart';
import 'package:pet_app/Utils/Round_button.dart';

class Paymentmode extends StatelessWidget {
  const Paymentmode({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Choose Your Payment mode',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pay with upi',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('20% off'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: TextEditingController(),
                    style: const TextStyle(color: Colors.black),
                    decoration:  InputDecoration(
                      hintText: 'Enter UPI id',
                      hintStyle: const TextStyle(color: Colors.grey),
                      labelText: 'UPI id',
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      contentPadding:const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    ),
                    keyboardType: TextInputType.text,                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoundButton(roundButtonText: 'Pay Rs.1338', onPressed: (){}),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}