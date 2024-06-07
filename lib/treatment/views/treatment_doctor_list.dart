import 'package:flutter/material.dart';
import 'package:pet_app/treatment/views/treatment_doctor_tile.dart';

class TreatmentDoctorList extends StatelessWidget {
  TreatmentDoctorList({super.key});

  final List<Map<String, dynamic>> shopBestsellers = [
    {
      'imgUrl': 'assets/doctor_2.png',
      'docName': 'Vasienka Oksana',
      'experience': 10,
      'rating': 4.5,
      'reviewCount': 20,
      'distance': 1.5,
    },
    {
      'imgUrl': 'assets/doctor_3.png',
      'docName': 'Avramenko Vladimir',
      'experience': 8,
      'rating': 4.5,
      'reviewCount': 32,
      'distance': 4.2,
    },
    {
      'imgUrl': 'assets/doctor_4.png',
      'docName': 'Alekseenko Vasily ',
      'experience': 10,
      'rating': 4.5,
      'reviewCount': 18,
      'distance': 1.5,
    },
    {
      'imgUrl': 'assets/doctor_5.png',
      'docName': 'Lauren Sell',
      'experience': 8,
      'rating': 4.5,
      'reviewCount': 24,
      'distance': 6.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 14.0, top: 18, bottom: 8),
          child: Text(
            "Doctors available near you",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            children: List.generate(
              shopBestsellers.length,
              (index) {
                final item = shopBestsellers[index];
                return Column(

                  children: [
                    TreatmentDoctorTile(
                      docImgPath: item['imgUrl'],
                      docName: item['docName'],
                      experience: item['experience'],
                      rating: item['rating'],
                      review: item['reviewCount'],
                      distance: item['distance'],
                    ),
                    Container(
                      color: const Color.fromRGBO(255, 248, 247, 1),
                      child: SizedBox(
                        height: 8,
                        child: Container(), // to display the color
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
