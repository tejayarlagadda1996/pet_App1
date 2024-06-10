class LabTest {
  final String labTestName;
  final String labTestDescription;
  final int labTestParameters;
  final int labTestOriginalPrice;
  final int labTestDiscountedPrice;

  LabTest({
    required this.labTestName,
    required this.labTestDescription,
    required this.labTestParameters,
    required this.labTestOriginalPrice,
    required this.labTestDiscountedPrice,
  });

  factory LabTest.fromJson(Map<String, dynamic> json) {
    return LabTest(
      labTestName: json['labTestName'] as String? ?? '',
      labTestDescription: json['labTestDescription'] as String? ?? '',
      labTestParameters: json['labTestParameters'] as int? ?? 0,
      labTestOriginalPrice: json['labTestOriginalPrice'] as int? ?? 0,
      labTestDiscountedPrice: json['labTestDiscountedPrice'] as int? ?? 0,

    );
  }
}
