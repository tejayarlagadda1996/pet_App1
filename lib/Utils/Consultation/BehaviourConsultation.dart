import 'package:flutter/material.dart';
import 'package:pet_app/Utils/Consultation/ConsultationTemplate.dart';
class BehaviourConsultation extends StatelessWidget {
  BehaviourConsultation({
    super.key,
    this.showViewAll = true,
  });

  final bool showViewAll;

  final List<String> _labels = [
    'Barking',
    'Destructive Behaviour',
    'Aggression',
    'Noise Phobia',
    'Fear',
    'Separation Anxiety',
  ];

  @override
  Widget build(BuildContext context) {
    return ConsultationTemplate(
      title: "Consultation Based on Behaviour",
      subtitle:
          "Get up to 15% off on your first Consultation\nBased on Behaviour",
      labels: _labels,
      showViewAllButton: showViewAll,
    );
  }
}
