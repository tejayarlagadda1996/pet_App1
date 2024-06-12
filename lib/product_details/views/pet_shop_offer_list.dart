import 'package:flutter/material.dart';
import 'package:pet_app/product_details/views/pet_shop_offers.dart';

class PetShopOffersList extends StatelessWidget {
  const PetShopOffersList({super.key});

  @override
  Widget build(BuildContext context) {
    final offers = [
      {
        'title': 'Get flat 20% Off',
        'description': 'For all new users in Hyderabad and Bangalore',
      },
      {
        'title': 'Buy 1 Get 1 Free',
        'description': 'On selected pet food brands',
      },
      {
        'title': 'Free Vet Consultation',
        'description': 'With every purchase above \$50',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(14,12,0,0),
          child: Text(
            "Offers",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: offers.length,
            itemBuilder: (context, index) {
              final offer = offers[index];
              return PetShopOffers(
                title: offer['title']!,
                description: offer['description']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
