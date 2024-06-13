import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TreatmentDoctorTile extends StatelessWidget {
  final String docImgPath;
  final String docName;
  final int experience;
  final double rating;
  final int review;
  final double distance;

  const TreatmentDoctorTile({
    super.key,
    required this.docImgPath,
    required this.docName,
    required this.experience,
    required this.rating,
    required this.review,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 10, top: 4),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              // Doctor Photo
              Image.asset(docImgPath, fit: BoxFit.cover),
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
                            docName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                            maxFontSize: 14,
                            minFontSize: 14,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "View",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(237, 109, 78, 1),
                              ),
                            ),
                          ),
                        )
                      ],
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
                        const SizedBox(width: 8),

                        // Reviews
                        const Icon(
                          Icons.circle,
                          color: Color.fromRGBO(237, 109, 78, 1),
                          size: 10,
                        ),
                        Text(
                          " $review Reviews",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(width: 6),

                        // Distance
                        const Icon(
                          Icons.location_pin,
                          color: Color.fromRGBO(237, 109, 78, 1),
                          size: 14,
                        ),
                        Text(
                          "$distance km",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
