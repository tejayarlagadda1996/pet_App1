import 'package:flutter/material.dart';
import 'package:pet_app/SymptomTreatment/views/DataPrivacy.dart';
import 'package:pet_app/SymptomTreatment/views/SelectedSymptoms.dart';
import 'package:pet_app/SymptomTreatment/views/SymptomBottombar.dart';
import 'package:pet_app/SymptomTreatment/views/TreatmentCharge.dart';
import 'package:pet_app/SymptomTreatment/views/TreatmentOffers.dart';
import 'package:pet_app/Utils/Consultation/BehaviourConsultation.dart';
import 'package:pet_app/Utils/Consultation/ConditionConsultation.dart';
import 'package:pet_app/Utils/Consultation/SymptomConsultation.dart';
import 'package:pet_app/Utils/DoctorCardList/DoctorConsultation.dart';

class SymptomTreatmentRoot extends StatelessWidget {
  final List<String> selectedLabels;

  const SymptomTreatmentRoot({super.key, required this.selectedLabels});

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
            DoctorConsultation(showViewAll: false),
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
