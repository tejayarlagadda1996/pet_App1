import 'package:flutter/material.dart';
import 'package:pet_app/global_widgets/display_image.dart';
import 'package:pet_app/global_widgets/searchbar.dart';
import 'package:pet_app/treatment/views/symptoms.dart';
import 'package:pet_app/treatment/views/treatment_doctor_list.dart';

class Treatment extends StatefulWidget {
  const Treatment({super.key});

  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  final List<String> _labels = [
    'Runny Nose',
    'Sneezes',
    'Screeching ',
    'Fever',
    'Watery Eyes',
    'Lethargy',
    'Cold',
    'Vomiting',
    'Hairfall',
    'Shivering',
    'Shaking',
    'Dental Issue',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
              child: Icon(Icons.arrow_forward, color: Colors.transparent,),
              
            ),
          ],
        ),

        // DISPLAY SCREEN
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0, top: 12),
                child: Text(
                  "Know what happened to your pet?",
                  style: TextStyle(
                    color: Color.fromRGBO(26, 25, 25, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0, top: 4, bottom: 8),
                child: Text(
                  "Select a symptom and we will assign a doc for you",
                  style: TextStyle(
                    color: Color.fromRGBO(94, 92, 92, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const PetSearchbar(
                searchbarHintText: "Search with Symptoms ...",
              ),
              Symptoms(labels: _labels),
              Container(
                color: const Color.fromRGBO(255, 248, 247, 1),
                child: const SizedBox(
                  height: 8,
                  child: Center(), // to display the color
                ),
              ),
              TreatmentDoctorList(),
              const DisplayImage(imgUrl: "assets/onboarding_image_4.png"),
            ],
          ),
        ));
  }
}
