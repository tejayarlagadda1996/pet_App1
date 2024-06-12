import 'package:flutter/material.dart';
import 'package:pet_app/pet_shop/views/bottom_buttons.dart';
import 'package:pet_app/product_details/views/current_product_details.dart';
import 'package:pet_app/product_details/views/delivery_location.dart';
import 'package:pet_app/product_details/views/highlights.dart';
import 'package:pet_app/product_details/views/pet_shop_offer_list.dart';
import 'package:pet_app/product_details/views/policy.dart';
import 'package:pet_app/product_details/views/product_details_forward.dart';
import 'package:pet_app/product_details/views/rating_review.dart';
import 'package:pet_app/product_details/views/size_selector.dart';

class ProductDetails extends StatefulWidget {
  final String prodImgUrl;
  final String prodName;
  final String prodDesc;
  final double prodRating;
  final int prodReviews;
  final int prodPrice;
  final List<String> prodHighlights;

  const ProductDetails({
    super.key,
    required this.prodImgUrl,
    required this.prodName,
    required this.prodDesc,
    required this.prodRating,
    required this.prodReviews,
    required this.prodPrice,
    required this.prodHighlights,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<String> productSizes = [
    "1.5 kg",
    "3 kg"
  ]; // fetch according to product through API

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 5,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.share),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),

      // DISPLAY SCREEN
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ProductImageDisplay(),
            CurrentProductDetails(
              name: widget.prodName,
              description: widget.prodDesc,
              rating: widget.prodRating,
              reviews: widget.prodReviews,
              price: widget.prodPrice,
            ),
            SizeSelector(productSizes: productSizes),
            const Policy(),
            const PetShopOffersList(),
            const DeliveryLocation(),
            Highlights(highlights: widget.prodHighlights),
            const ProductDetailsForward(),
            RatingReview(
              rating: widget.prodRating,
              reviews: widget.prodReviews,
            ),
            // Comments(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomButtons(),
    );
  }
}
