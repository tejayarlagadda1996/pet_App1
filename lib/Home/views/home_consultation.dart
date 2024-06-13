import 'package:flutter/material.dart';
import 'package:pet_app/Home/views/consultation_header.dart';
import 'package:pet_app/Home/views/doctor_tile.dart';

class HomeConsultation extends StatefulWidget {
  const HomeConsultation({super.key});

  @override
  State<HomeConsultation> createState() => _HomeConsultationState();
}

class _HomeConsultationState extends State<HomeConsultation> {
  final List<Map<String, dynamic>> doctors = [
    {
      'imgUrl': "assets/doctor_1.jpg",
      'doctorName': 'Dr. Shruti Kedia',
      'clinicName': 'Pet101 Clinic, Hyderabad',
      'experience': 5,
      'rating': 4.5,
      'patientCount': 20,
      'availableTime': '10:00 AM tomorrow',
    },
    {
      'imgUrl': "assets/doctor_2.png",
      'doctorName': 'Dr. Rakesh Singh',
      'clinicName': 'Paws and Claws Veterinary Clinic',
      'experience': 8,
      'rating': 4.7,
      'patientCount': 15,
      'availableTime': '7:30 PM today',
    },
    {
      'imgUrl': "assets/doctor_3.png",
      'doctorName': 'Dr. Priya Patel',
      'clinicName': 'Pet Care Hospital',
      'experience': 6,
      'rating': 4.6,
      'patientCount': 18,
      'availableTime': '9:00 AM tomorrow',
    },
    {
      'imgUrl': "assets/doctor_4.png",
      'doctorName': 'Dr. Anil Gupta',
      'clinicName': 'Animal Health Clinic',
      'experience': 10,
      'rating': 4.9,
      'patientCount': 25,
      'availableTime': '12:00 PM tomorrow',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "We Provide At Home Consultation",
          subtitle: "Get 10% Offer on your First Consultation",
          onPressed: () {}, // add functionality
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 4),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.55,
            constraints: const BoxConstraints(maxHeight: 190, minHeight: 180),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                final doctor = doctors[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: DoctorTile(
                    imgUrl: doctor['imgUrl']!,
                    doctorName: doctor['doctorName']!,
                    clinicName: doctor['clinicName']!,
                    experience: doctor['experience']!,
                    rating: doctor['rating']!,
                    patientCount: doctor['patientCount']!,
                    availableTime: doctor['availableTime']!,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
