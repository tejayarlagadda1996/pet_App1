class GroomingPackage {
  final String packageName;
  final int packageDiscount;
  final double packageRating;
  final int packageReviews;
  final String packageTime;
  final List<String> packageDetails;
  final List<String> packageDetailImagePaths;
  final int packagePrice;

  GroomingPackage({
    required this.packageName,
    required this.packageDiscount,
    required this.packageRating,
    required this.packageReviews,
    required this.packageTime,
    required this.packageDetails,
    required this.packageDetailImagePaths,
    required this.packagePrice,
  });
}
