import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/consultation_template.dart';

class ConditionConsultation extends StatefulWidget {
  const ConditionConsultation({super.key});

  @override
  State<ConditionConsultation> createState() => _ConditionConsultationState();
}

class _ConditionConsultationState extends State<ConditionConsultation> {
  final List<String> _labels = [
    'Allergies',
    'Arthritis',
    'Diarrhea',
    'Dental Disease',
    'Ear Conditions',
    'Fractures',
    'Insect Bites'
  ];

  @override
  Widget build(BuildContext context) {
    return CommonConsultation(
      title: "Consultation Based on Conditions",
      subtitle:
          "Get up to 15% off on your first Consultation\nBased on Conditions",
      labels: _labels,
    );
  }
}