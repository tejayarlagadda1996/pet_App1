import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/consultation_template.dart';

class SymptomConsultation extends StatefulWidget {
  const SymptomConsultation({super.key});

  @override
  State<SymptomConsultation> createState() => _SymptomConsultationState();
}

class _SymptomConsultationState extends State<SymptomConsultation> {
  final List<String> _labels = [
    'Runny Nose',
    'Sneezes',
    'Screeching',
    'Fever',
    'Watery Eyes',
    'Lethargy',
    'Vomiting',
  ];

  @override
  Widget build(BuildContext context) {
    return CommonConsultation(
      title: "Consultation Based on Symptoms",
      subtitle:
          "Get up to 15% off on your first Consultation\nBased on Symptoms",
      labels: _labels,
    );
  }
}