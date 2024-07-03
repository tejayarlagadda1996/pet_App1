class Product {
  final String productId;
  final String productName;
  final double productPrice;
  final String productImagePath;
  final double productRating;
  final int productReviews;
  final String productDescription;
  final List<String> productHighlights;

  const Product({
    required this.productId,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
    required this.productRating,
    required this.productReviews,
    required this.productDescription,
    required this.productHighlights,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    try {
      return Product(
        productId: json['productId'] as String? ?? '',
        productName: json['productName'] as String? ?? '',
        productPrice: (json['productPrice'] as num?)?.toDouble() ?? 0.0,
        productImagePath: json['productImagePath'] as String? ?? '',
        productRating: (json['productRating'] as num?)?.toDouble() ?? 0.0,
        productReviews: json['productReviews'] as int? ?? 0,
        productDescription: json['productdescription'] as String? ?? '',
        productHighlights: json['productHighlights'] != null
            ? List<String>.from(json['productHighlights'])
            : [],
      );
    } catch (e) {
      print('Error parsing product: $json, error: $e');
      throw e; // Re-throw the error after logging it
    }
  }
}
