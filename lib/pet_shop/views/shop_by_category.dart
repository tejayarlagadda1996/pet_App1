import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pet_app/pet_shop/views/shop_category_tile.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  final List<Map<String, String>> categories = const [
    {"name": "Food", "imgUrl": "assets/shop_category_food.png"},
    {"name": "Grooming", "imgUrl": "assets/shop_category_grooming.png"},
    {"name": "Leash", "imgUrl": "assets/shop_category_leash.png"},
    {"name": "Tasty Treats", "imgUrl": "assets/shop_category_tastytreat.png"},
    {"name": "Clothing", "imgUrl": "assets/shop_category_clothing.png"},
    {"name": "Walk Essential", "imgUrl": "assets/shop_category_walk.png"},
    {"name": "Beds", "imgUrl": "assets/shop_category_beds.png"},
    {"name": "Training Aid", "imgUrl": "assets/shop_category_trainingaid.png"},
    {"name": "Health Supplements", "imgUrl": "assets/shop_category_health.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 14.0, top: 14, bottom: 14),
          child: Text(
            "Shop by Category",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            children: categories.map((category) {
              return StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: ShopCategoryTile(
                  name: category["name"]!,
                  imgUrl: category["imgUrl"]!,
                  onTap: () {},
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
