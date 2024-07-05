import 'package:flutter/material.dart';
import 'package:pet_app/Models/product.dart';
import 'package:pet_app/PetShop/views/PetShopBottomButtons.dart';
import 'package:pet_app/ProductDetails/views/CurrentProductDetails.dart';
import 'package:pet_app/ProductDetails/views/DeliveryLocation.dart';
import 'package:pet_app/ProductDetails/views/Highlights.dart';
import 'package:pet_app/ProductDetails/views/PetShopOffersList.dart';
import 'package:pet_app/ProductDetails/views/ProductDetailComments.dart';
import 'package:pet_app/ProductDetails/views/ProductPolicy.dart';
import 'package:pet_app/ProductDetails/views/ProductDetailsButton.dart';
import 'package:pet_app/ProductDetails/views/RatingReview.dart';
import 'package:pet_app/ProductDetails/views/SizeSelector.dart';

class ProductDetailsRoot extends StatefulWidget {
  final Product product;

  const ProductDetailsRoot({
    super.key,
    required this.product
  });

  @override
  State<ProductDetailsRoot> createState() => _ProductDetailsRootState();
}

class _ProductDetailsRootState extends State<ProductDetailsRoot> {
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
            Center(child: Image.asset(widget.product.productImagePath)),
            CurrentProductDetails(
              name: widget.product.productName,
              description: widget.product.productDescription,
              rating: widget.product.productRating,
              reviews: widget.product.productReviews.toDouble(),
              price: widget.product.productPrice,
            ),
            SizeSelector(productSizes: widget.product.productsize),
            const ProductPolicy(),
            const PetShopOffersList(),
            const DeliveryLocation(),
            Highlights(highlights: widget.product.productHighlights),
            const ProductDetailsButton(),
            RatingReview(
              rating: widget.product.productRating,
              reviews: widget.product.productReviews,
            ),
            ProductDetailComments(),
          ],
        ),
      ),
      bottomNavigationBar: const PetShopBottomButtons(),
    );
  }
}
