import 'package:flutter/material.dart';
import 'package:pet_app/global_widgets/consultation/behaviour_consultation.dart';
import 'package:pet_app/global_widgets/consultation/condition_consultation.dart';
import 'package:pet_app/global_widgets/consultation/symptom_consultation.dart';
import 'package:pet_app/global_widgets/doctor_card_display/doctor_consultation.dart';
import 'package:pet_app/symptom_treatment/views/data_privacy.dart';
import 'package:pet_app/symptom_treatment/views/selected_symptoms.dart';
import 'package:pet_app/symptom_treatment/views/symptom_bottombar.dart';
import 'package:pet_app/symptom_treatment/views/treatment_charge.dart';
import 'package:pet_app/symptom_treatment/views/treatment_offers.dart';

class SymptomTreatment extends StatelessWidget {
  final List<String> selectedLabels;

  const SymptomTreatment({super.key, required this.selectedLabels});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 254, 253, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 5,
        title: const Center(
          child: Text(
            "Treatment",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        // to balance out the back button, remove if any action is added
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SelectedSymptoms(selectedLabels: selectedLabels),
            const SizedBox(height: 10),
            HomeConsultation(showViewAll: false),
            const SizedBox(height: 10),
            ConditionConsultation(showViewAll: false),
            const SizedBox(height: 10),
            SymptomConsultation(showViewAll: false),
            const SizedBox(height: 10),
            BehaviourConsultation(showViewAll: false),
            const SizedBox(height: 10),
            TreatmentCharge(),
            const SizedBox(height: 10),
            TreatmentOffers(),
            const SizedBox(height: 10),
            DataPrivacy(),          
            const SizedBox(height: 40),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: SymptomBottombar(),
    );
  }
}
