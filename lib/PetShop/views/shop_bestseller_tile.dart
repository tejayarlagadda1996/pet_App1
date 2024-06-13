import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/PetShop/views/home_product_details.dart';

class ShopBestsellerTile extends StatelessWidget {
  final String imgUrl;
  final String itemName;
  final String itemDescription;
  final int price;
  final double rating;
  final int reviewCount;
  final List<String> highlights;

  const ShopBestsellerTile({
    super.key,
    required this.imgUrl,
    required this.itemName,
    required this.itemDescription,
    required this.price,
    required this.rating,
    required this.reviewCount,
    required this.highlights,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: GestureDetector(
        onTap: () {
          Get.to(
            ProductDetails(
              prodImgUrl: imgUrl,
              prodName: itemName,
              prodDesc: itemDescription,
              prodRating: rating,
              prodReviews: reviewCount,
              prodPrice: price,
              prodHighlights: highlights,
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
            child: Row(
              children: [
                // Item Photo
                SizedBox(
                  height: 120,
                  width: 90,
                  child: Image.asset(imgUrl, fit: BoxFit.cover),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Item Name
                      Text(
                        itemName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Item Description
                      AutoSizeText(
                        itemDescription,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      const SizedBox(height: 8),
                      Row(
                        children: [
                          // Rating
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(237, 109, 78, 1),
                            size: 14,
                          ),
                          Text(
                            "$rating/5",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                            ),
                          ),
                          // Reviews
                          Text(
                            " ($reviewCount)",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Price
                      Row(
                        children: [
                          Text(
                            "\$$price",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(237, 109, 78, 1),
                            ),
                          ),
                          Expanded(child: Container()),
                          // const SizedBox(width: 90),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {}, // add functionality
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(237, 109, 78, 1),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                      color: Color.fromRGBO(237, 109, 78, 1),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
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
        ),
      ),
    );
  }
}
