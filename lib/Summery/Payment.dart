import 'package:flutter/material.dart';
import 'package:pet_app/Summery/DeliveryAddress.dart';
import 'package:pet_app/Summery/PaymentMode.dart';
import 'package:pet_app/Summery/typesofpayment.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Deliveryaddress(),
            Paymentmode(),
            Typesofpayment()        
          ]
        ),
      ),
    );
  }
}