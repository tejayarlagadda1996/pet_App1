class Product {
  final String productId;
  final String productName;
  final double productPrice;
  final String productImagePath;
  final double productRating;
  final int productReviews;
  final List<String> productHighlights;

  const Product ({
    required this.productId,
    required this.productName,
    required this.productPrice,
    required this.productImagePath,
    required this.productRating,
    required this.productReviews,
    required this.productHighlights,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productPrice: json['productPrice'].toDouble(),
      productImagePath: json['productImagePath'] as String,
      productRating: json['productRating'].toDouble(),
      productReviews: json['productReviews'] as int,
      productHighlights: List<String>.from(json['productHighlights']),
    );
  }
}