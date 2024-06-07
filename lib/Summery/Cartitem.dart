import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Cartitem extends StatelessWidget {
  const Cartitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/best_seller_product.jpg'),
                const SizedBox(width: 10,),
                const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText('Drools',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      SizedBox(width: 200, child: AutoSizeText('1.2kg egg & chicken 3kg dry adult food',style: TextStyle(fontSize: 10))),
                      SizedBox(height: 8),
                      AutoSizeText('Delivery by sun,2nd may',style: TextStyle(fontSize: 10)),
                      AutoSizeText('1.5kg',style: TextStyle(fontWeight: FontWeight.bold),)
                      
                    ],
                  ),
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Quantity:1'),
                Text('Rs. 1129',style: TextStyle(color: Colors.red),)
              ],
            )
          ],
        ),
      ),
    );
  }
}