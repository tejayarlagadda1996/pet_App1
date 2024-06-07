import 'package:flutter/material.dart';
import 'package:pet_app/pet_shop/views/shop_category_tile.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 14.0, top: 14, bottom: 8),
          child: Text(
            "Shop by Category",
            style: TextStyle(
              color: Color.fromRGBO(26, 25, 25, 1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
                child: ShopCategoryTile(
              name: "Food",
              imgUrl: "assets/shop_category_food.png",
              onTap: () {},
            )),
            Expanded(
                child: ShopCategoryTile(
              name: "Grooming",
              imgUrl: "assets/shop_category_grooming.png",
              onTap: () {},
            )),
            Expanded(
                child: ShopCategoryTile(
              name: "Leash",
              imgUrl: "assets/shop_category_leash.png",
              onTap: () {},
              
            )),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                child: ShopCategoryTile(
              name: "Tasty Treats",
              imgUrl: "assets/shop_category_tastytreat.png",
              onTap: () {},
            )),
            Expanded(
                child: ShopCategoryTile(
              name: "Clothing",
              imgUrl: "assets/shop_category_clothing.png",
              onTap: () {},
            )),
            Expanded(
                child: ShopCategoryTile(
              name: "Walk Essential",
              imgUrl: "assets/shop_category_walk.png",
              onTap: () {},
            )),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                child: ShopCategoryTile(
              name: "Beds",
              imgUrl: "assets/shop_category_beds.png",
              onTap: () {},
            )),
            Expanded(
                child: ShopCategoryTile(
              name: "Training Aid",
              imgUrl: "assets/shop_category_trainingaid.png",
              onTap: () {},
            )),
            Expanded(
                child: ShopCategoryTile(
              name: "Health Supplements",
              imgUrl: "assets/shop_category_health.png",
              onTap: () {},
            )),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
