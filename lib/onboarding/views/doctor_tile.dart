import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/onboarding/views/rect_button.dart';

class DoctorTile extends StatelessWidget {
  final String imgUrl;
  final String doctorName;
  final String clinicName;
  final int experience;
  final double rating;
  final int patientCount;
  final String availableTime;

  const DoctorTile({
    super.key,
    required this.imgUrl,
    required this.doctorName,
    required this.clinicName,
    required this.experience,
    required this.rating,
    required this.patientCount,
    required this.availableTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 10, top: 4),
      child: Container(
        width: MediaQuery.of(context).size.width*0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Doctor Photo
                  Image.asset(imgUrl, fit: BoxFit.cover),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Doctor Name
                            Flexible(
                              fit: FlexFit.loose,
                              child: AutoSizeText(
                                doctorName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                                maxFontSize: 18,
                                minFontSize: 18,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            GestureDetector(
                              child: const Icon(
                                Icons.favorite_border_outlined,
                                color: Color.fromRGBO(237, 109, 78, 1),
                              ),
                              onTap: () {}, // Add functionality
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),

                        AutoSizeText(
                          clinicName,
                          style: const TextStyle(
                            color: Color.fromRGBO(237, 109, 78, 1),
                          ),
                          maxFontSize: 12,
                          minFontSize: 12,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        // Experience
                        Text(
                          "$experience Years Experience",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            // Rating
                            const Icon(
                              Icons.star,
                              color: Color.fromRGBO(237, 109, 78, 1),
                              size: 14,
                            ),
                            Text(
                              "$rating",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                            const SizedBox(width: 12),

                            // Patients
                            const Icon(
                              Icons.circle,
                              color: Color.fromRGBO(237, 109, 78, 1),
                              size: 14,
                            ),
                            Text(
                              " $patientCount Patient Stories",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Next Available",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(237, 109, 78, 1),
                        ),
                      ),

                      // Availibility
                      Text(
                        availableTime,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  // Expanded(child: Container()),
                  RectButton(
                    RectButtonText: "Book Now",
                    onPressed: () {}, // add functionality
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
