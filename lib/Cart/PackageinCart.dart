import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';
import 'package:pet_app/Models/GroomingPackage.dart';

class Packageincart extends StatelessWidget {
  Packageincart({super.key, required this.packageincart});
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  
  final GroomingPackage packageincart;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/packageimage.png'),
                const Text('Package', style: TextStyle(color: Color.fromRGBO(241, 168, 82, 1))),
                Spacer(),
                IconButton(onPressed: (){cartcontroller.deleteiteminCart(Producttype.packages, packageincart);}, icon: const Icon(Icons.delete))
              ],
            ),
            Text(packageincart.packageName),
            Wrap(
                spacing: 4,
                runSpacing: 2,
                children: List.generate(
                  packageincart.packageDetails.length,
                  (index) {
                    return Text(
                      '\u2022 ${packageincart.packageDetails[index]}',
                      style: const TextStyle(color: Colors.grey),
                    );
                  },
                )
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Quantity : 1'),
                Text('\u20B9 ${packageincart.packagePrice}')
              ],
            )
          ],
        ),
      ),
    );
  }
}
