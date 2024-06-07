import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/consultation_template.dart';

class BehaviourConsultation extends StatefulWidget {
  const BehaviourConsultation({super.key});

  @override
  State<BehaviourConsultation> createState() =>
      _BehaviourConsultationState();
}

class _BehaviourConsultationState extends State<BehaviourConsultation> {
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
    return CommonConsultation(
      title: "Consultation Based on Behaviour",
      subtitle:
          "Get up to 15% off on your first Consultation\nBased on Behaviour",
      labels: _labels,
    );
  }
}