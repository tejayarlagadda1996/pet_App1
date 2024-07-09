import 'package:flutter/material.dart';

class Deliveryaddress extends StatelessWidget {
  const Deliveryaddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/delivery.png'),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery to 500082',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Change',
                            style:
                                TextStyle(color: Color.fromRGBO(237, 109, 78, 1)),
                          ))
                    ],
                  ),
                  const Text('26/A shree rama residency, Whitefeilds, Hyderabad, Telangana ')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
