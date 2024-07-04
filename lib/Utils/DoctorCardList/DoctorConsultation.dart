import 'package:flutter/material.dart';
import 'package:pet_app/Models/doctor.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';
import 'package:pet_app/Utils/DoctorCardList/DoctorTile.dart';

class DoctorConsultation extends StatelessWidget {
  const DoctorConsultation({super.key, this.showViewAll = true, required this.doctorslist});

  final bool showViewAll;

  final List<Doctor> doctorslist;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ConsultationHeader(
        title: "We Provide At Home Consultation",
        subtitle: "Get 10% Offer on your First Consultation",
        onPressed: () {}, // add functionality
        showViewAllButton: showViewAll,
      ),
      Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 4),
          child: Container(
              height: MediaQuery.of(context).size.width * 0.55,
              constraints: const BoxConstraints(maxHeight: 190, minHeight: 180),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorslist.length,
                  itemBuilder: (context, index) {
                    final doctor = doctorslist[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: DoctorTile(
                        imgUrl: doctor.doctorImagePath,
                        doctorName: doctor.doctorName,
                        clinicName: doctor.doctorClinic,
                        experience: doctor.doctorExperience,
                        rating: doctor.doctorRating,
                        patientCount: doctor.doctorPatients,
                        availableTime: doctor.doctorAvailability,
                      ),
                    );
                  })))
    ]);
  }
}
