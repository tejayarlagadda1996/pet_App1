class GroomingPackage {
  final String packageId;
  final String packageName;
  final int packageDiscount;
  final double packageRating;
  final int packageReviews;
  final String packageTime;
  final List<String> packageDetails;
  final int packagePrice;
  // final List<String> packageDetailImagePaths;

  GroomingPackage({
    required this.packageId,
    required this.packageName,
    required this.packageDiscount,
    required this.packageRating,
    required this.packageReviews,
    required this.packageTime,
    required this.packageDetails,
    required this.packagePrice,
    // required this.packageDetailImagePaths,
  });

  factory GroomingPackage.fromJson(Map<String, dynamic> json) {
    return GroomingPackage(
      packageId: json['packageId'] as String,
      packageName: json['packageName'] as String,
      packageDiscount: json['packageDiscount'] as int,
      packageRating: json['packageRating'].toDouble(),
      packageReviews: json['packageReviews'] as int,
      packageTime: json['packageTime'] as String,
      packageDetails: List<String>.from(json['packageDetails']),
      packagePrice: json['packagePrice'] as int,
      // packageDetailImagePaths: List<String>.from(json['packageDetailImagePaths']),
    );
  }
}
