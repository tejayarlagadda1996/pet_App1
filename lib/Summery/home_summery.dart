import 'package:flutter/material.dart';
import 'package:pet_app/Summery/Bottombbuttons.dart';
import 'package:pet_app/Summery/Cartitems.dart';
import 'package:pet_app/Summery/DeliveryAddress.dart';
import 'package:pet_app/Summery/Offerforyou.dart';
import 'package:pet_app/Summery/Price_details.dart';
import 'package:pet_app/global_widgets/display_image.dart';

class Summery extends StatefulWidget {
  const Summery({super.key});

  @override
  State<Summery> createState() => _SummeryState();
}

class _SummeryState extends State<Summery> {
  bool ifyes = false;

  void toggleSign(bool value) {
    setState(() {
      ifyes = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Summary'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            color:const Color.fromRGBO(255, 249, 246, 1),
            child: Column(
              children: [
                const Deliveryaddress(),
                const Cartitems(),
                const Offerforyou(),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Would you like to giftwrap the product?'),
                        Switch(
                          value: ifyes,
                          onChanged: toggleSign,
                          activeColor: Colors.blue,
                          inactiveThumbColor: Colors.red,
                          inactiveTrackColor: Colors.red[100],
                        )
                      ],
                    ),
                  ),
                ),
                const Pricedetails(),
                const DisplayImage(imgUrl: "assets/petshop_image_1.png"),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Bottombbuttons()
      );
  }
}
