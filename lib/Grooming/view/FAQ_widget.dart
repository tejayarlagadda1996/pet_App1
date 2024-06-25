import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/view/FAqList.dart';

class FaqWidget extends StatelessWidget {
  final FAQ faq;
  const FaqWidget({super.key, required this.faq});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: Text(faq.question),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(faq.answer),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}