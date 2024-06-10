class Doctor {
  final String doctorId;
  final String doctorImagePath;
  final String doctorName;
  final String doctorClinic;
  final int doctorExperience;
  final double doctorRating;
  final int doctorPatients;
  final String doctorAvailibilty;

  Doctor({
    required this.doctorId,
    required this.doctorImagePath,
    required this.doctorName,
    required this.doctorClinic,
    required this.doctorExperience,
    required this.doctorRating,
    required this.doctorPatients,
    required this.doctorAvailibilty,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      doctorId: json['doctorId'] as String? ?? '',
      doctorImagePath: json['doctorImagePath'] as String,
      doctorName: json['doctorName'] as String,
      doctorClinic: json['doctorClinic'] as String,
      doctorExperience: json['doctorExperience'] as int,
      doctorRating: json['doctorRating'].toDouble(),
      doctorPatients: json['doctorPatients'] as int,
      doctorAvailibilty: json['doctorAvailibilty'] as String,
    );
  }
}
