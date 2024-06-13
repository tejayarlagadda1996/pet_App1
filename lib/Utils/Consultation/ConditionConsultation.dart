import 'package:flutter/material.dart';
import 'package:pet_app/Utils/Consultation/ConsultationTemplate.dart';

class ConditionConsultation extends StatelessWidget {
  ConditionConsultation({
    super.key,
    this.showViewAll = true,
  });

  final bool showViewAll;

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
    return ConsultationTemplate(
      title: "Consultation Based on Conditions",
      subtitle: "Get up to 15% off on your first Consultation\nBased on Conditions",
      labels: _labels,
      showViewAllButton: showViewAll,
    );
  }
}
