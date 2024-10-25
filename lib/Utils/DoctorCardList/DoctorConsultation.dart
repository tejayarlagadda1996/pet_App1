import 'package:flutter/material.dart';
import 'package:pet_app/Home/model/HomedataModel.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';
import 'package:pet_app/Utils/DoctorCardList/DoctorTile.dart';

class DoctorConsultation extends StatelessWidget {
  const DoctorConsultation({
    super.key,
    this.showViewAll = true,
    required this.doctors,
  });

  final bool showViewAll;

  final AtHomeDoctors doctors;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ConsultationHeader(
        title: doctors.labelName ?? '',
        subtitle: doctors.labelShortDescription ?? '',
        onPressedViewAll: () {}, // add functionality
        showViewAllButton: showViewAll,
      ),
      Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 4),
          child: Container(
              height: MediaQuery.of(context).size.width * 0.48,
              constraints: const BoxConstraints(maxHeight: 190),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctors.atHomeDoctors!.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors.atHomeDoctors![index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: DoctorTile(
                        imgUrl: doctor.doctorImage ?? '',
                        doctorName: doctor.doctorName ?? '',
                        clinicName: doctor.clinic ?? '',
                        experience: doctor.experience ?? '',
                        rating: doctor.rating ?? '',
                        patientCount: doctor.patientStories ?? '',
                        availableTime: doctor.nextAvaliableSlot ?? '',
                      ),
                    );
                  })))
    ]);
  }
}
