import 'package:flutter/material.dart';

class DoctorDetailsCard extends StatelessWidget {
  final String docName;
  final int experience;
  final double rating;
  final int review;
  final double distance;

  const DoctorDetailsCard({
    super.key,
    required this.docName,
    required this.experience,
    required this.rating,
    required this.review,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
      //  width: MediaQuery.of(context).size.width * 0.5,
        // constraints: BoxConstraints(
        //   maxWidth: MediaQuery.of(context).size.width * 0.5,
        // ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const[
            BoxShadow(
              color: Color.fromARGB(255, 221, 221, 221),
              blurRadius: 15,
              spreadRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
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
                          child: Text(
                            docName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                          child: Text(
                            "500/-",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(237, 109, 78, 1),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Experience
                    Text(
                      "$experience Years Experience",
                      style: TextStyle(
                        fontSize: 13,
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
                          size: 16,
                        ),
                        Text(
                          " $rating",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(width: 8),

                        // Reviews
                        const Icon(
                          Icons.circle,
                          color: Color.fromRGBO(237, 109, 78, 1),
                          size: 12,
                        ),
                        Text(
                          " $review Reviews",
                          style: TextStyle(
                            fontSize: 13,
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
                            fontSize: 13,
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
      );
  }
}
