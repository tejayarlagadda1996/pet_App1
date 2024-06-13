import 'package:flutter/material.dart';
import 'package:pet_app/PetShop/views/bottom_buttons.dart';
import 'package:pet_app/ProductDetails/views/CurrentProductDetails.dart';
import 'package:pet_app/ProductDetails/views/DeliveryLocation.dart';
import 'package:pet_app/ProductDetails/views/Highlights.dart';
import 'package:pet_app/ProductDetails/views/PetShopOffersList.dart';
import 'package:pet_app/ProductDetails/views/ProductPolicy.dart';
import 'package:pet_app/ProductDetails/views/ProductDetailsButton.dart';
import 'package:pet_app/ProductDetails/views/RatingReview.dart';
import 'package:pet_app/ProductDetails/views/SizeSelector.dart';

class ProductDetailsRoot extends StatefulWidget {
  final String prodImgUrl;
  final String prodName;
  final String prodDesc;
  final double prodRating;
  final int prodReviews;
  final int prodPrice;
  final List<String> prodHighlights;

  const ProductDetailsRoot({
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
  State<ProductDetailsRoot> createState() => _ProductDetailsRootState();
}

class _ProductDetailsRootState extends State<ProductDetailsRoot> {
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
            const ProductPolicy(),
            const PetShopOffersList(),
            const DeliveryLocation(),
            Highlights(highlights: widget.prodHighlights),
            const ProductDetailsButton(),
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
