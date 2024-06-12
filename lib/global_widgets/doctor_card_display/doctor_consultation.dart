import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/onboarding/controllers/doctor_controller.dart';
import 'package:pet_app/global_widgets/consultation/consultation_header.dart';
import 'package:pet_app/global_widgets/doctor_card_display/doctor_tile.dart';

class HomeConsultation extends StatelessWidget {
  HomeConsultation({
    super.key,
    this.showViewAll = true,
  });

  final bool showViewAll;

  final DoctorController doctorController = Get.put(DoctorController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConsultationHeader(
          title: "We Provide At Home Consultation",
          subtitle: "Get 10% Offer on your First Consultation",
          onPressed: () {}, // add functionality
          showViewAllButton: showViewAll,
        ),
        Obx(() {
          if (doctorController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (doctorController.doctorList.isEmpty) {
            return const Center(child: Text('No doctors available'));
          } else {
            return Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 4),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.55,
                constraints:
                    const BoxConstraints(maxHeight: 190, minHeight: 180),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorController.doctorList.length,
                  itemBuilder: (context, index) {
                    final doctor = doctorController.doctorList[index];
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
                  },
                ),
              ),
            );
          }
        }),
      ],
    );
  }
}
