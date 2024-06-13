import 'package:flutter/material.dart';
import 'package:pet_app/Home/views/best_seller_tile.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  final List<Map<String, dynamic>> bestSellers = const [
    {
      "name": "RC Kitten",
      "imgUrl": "assets/best_seller_1.png",
      "price": 120.99
    },
    {
      "name": "Cat Fish Food",
      "imgUrl": "assets/best_seller_2.png",
      "price": 18.99
    },
    {"name": "RC Kitten", "imgUrl": "assets/best_seller_1.png", "price": 20.99},
    {"name": "RC Kitten", "imgUrl": "assets/best_seller_2.png", "price": 18.99},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 8),
          child: Row(
            // Bestseller Header
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Best Seller",
                style: TextStyle(
                  color: Color.fromRGBO(26, 25, 25, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {}, // add functionality
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Color.fromRGBO(237, 109, 78, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Bestseller Item Display
        Container(
          height: MediaQuery.of(context).size.width * 0.54,
          constraints: const BoxConstraints(maxHeight: 190, minHeight: 190),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            itemCount: bestSellers.length,
            itemBuilder: (context, index) {
              return BestSellerTile(
                name: bestSellers[index]['name'],
                imgUrl: bestSellers[index]['imgUrl'],
                price: bestSellers[index]['price'],
              );
            },
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
