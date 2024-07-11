import 'package:flutter/material.dart';
import 'package:pet_app/DoctorProfile/AboutDoctor.dart';
import 'package:pet_app/DoctorProfile/BookASlot.dart';
import 'package:pet_app/DoctorProfile/DoctorDetailsCard.dart';
import 'package:pet_app/DoctorProfile/DoctorProfileBottombar.dart';
import 'package:pet_app/DoctorProfile/DoctorProfileOptionsList.dart';
import 'package:pet_app/DoctorProfile/DoctorProfileReviews.dart';
import 'package:pet_app/DoctorProfile/DoctorReportIssue.dart';

class DoctorProfileRoot extends StatelessWidget {
  const DoctorProfileRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          flexibleSpace: Stack(
            clipBehavior: Clip.none,
            children: [
              FlexibleSpaceBar(
                background: Image.asset(
                  'assets/doctor_3.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              const Positioned(left: 20,right: 20,bottom: -20,child: DoctorDetailsCard(
              docName: 'Sasha Zverev',
              experience: 7,
              rating: 4.6,
              review: 124,
              distance: 1.5,
            ),)
            ],
          ),
          actions: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border_outlined),
            )
          ],
        ),
      ),
      body: 
   
          const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                AboutDoctor(
                  doctorInfo:
                      'Alekseenko Vasily Vasilyevich, born in 1974 Master of Veterinary Medicine Leading doctor Veterinary clinic Specialization: clinical diagnostics, surgery vet, dentist',
                ),
                BookASlot(),
                DoctorProfileReviews(),
                DoctorProfileOptionsList(),
                DoctorReportIssue(),
             
              ],
            ),
          ),
         
       
      bottomNavigationBar: const DoctorProfileBottombar(),
    );
  }
}
