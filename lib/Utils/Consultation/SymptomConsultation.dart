import 'package:flutter/material.dart';
import 'package:pet_app/Utils/Consultation/ConsultationTemplate.dart';

class SymptomConsultation extends StatelessWidget {
  SymptomConsultation({
    super.key,
    this.showViewAll = true,
  });

  final bool showViewAll;

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
    return ConsultationTemplate(
      title: "Consultation Based on Symptoms",
      subtitle:
          "Get up to 15% off on your first Consultation\nBased on Symptoms",
      labels: _labels,
      showViewAllButton: showViewAll,
    );
  }
}
