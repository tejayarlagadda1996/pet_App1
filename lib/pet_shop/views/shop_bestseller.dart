import 'package:flutter/material.dart';
import 'package:pet_app/pet_shop/views/shop_bestseller_tile.dart';

class ShopBestseller extends StatelessWidget {
  ShopBestseller({super.key});

  final List<Map<String, dynamic>> shopBestsellers = [
    {
      'imgUrl': 'assets/best_seller_product.jpg',
      'itemName': 'Drools',
      'itemDescription': '1.2kg egg & chicken 3kg dry adult food',
      'price': 180,
      'rating': 4.5,
      'reviewCount': 67,
      'highlights': ["Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1"]
    },
    {
      'imgUrl': 'assets/best_seller_product.jpg',
      'itemName': 'Drools',
      'itemDescription': '1.2kg egg & chicken 3kg dry adult food. 3kg dry adult food.',
      'price': 180,
      'rating': 4.5,
      'reviewCount': 67,
      'highlights': ["Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1"]
    },
    {
      'imgUrl': 'assets/best_seller_product.jpg',
      'itemName': 'Drools',
      'itemDescription': '1.2kg egg & chicken 3kg dry adult food. Good for pets who are habituated to being lazy.',
      'price': 180,
      'rating': 4.5,
      'reviewCount': 67,
      'highlights': ["Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1"]
    },
    {
      'imgUrl': 'assets/best_seller_product.jpg',
      'itemName': 'Drools',
      'itemDescription': '1.2kg egg & chicken 3kg dry adult food',
      'price': 180,
      'rating': 4.5,
      'reviewCount': 67,
      'highlights': ["Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1","Highlight 1"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromRGBO(255, 248, 247, 1),
          child: const SizedBox(
            height: 10,
            child: Center(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 14.0, top: 18, bottom: 8),
          child: Text(
            "Best Seller",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            children: List.generate(
              shopBestsellers.length,
              (index) {
                final item = shopBestsellers[index];
                return Column(
                  children: [
                    ShopBestsellerTile(
                      imgUrl: item['imgUrl'],
                      itemName: item['itemName'],
                      itemDescription: item['itemDescription'],
                      price: item['price'],
                      rating: item['rating'],
                      reviewCount: item['reviewCount'],
                      highlights: item['highlights'],
                    ),
                    Container(
                      color: const Color.fromRGBO(255, 248, 247, 1),
                      child: const SizedBox(
                        height: 8,
                        child: Center(), // to display the color
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
