import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';
import 'package:pet_app/Home/model/HomedataModel.dart';
import 'package:pet_app/Home/views/ProductTile.dart';
import 'package:pet_app/Utils/Consultation/ConsultationHeader.dart';

// ignore: must_be_immutable
class Products extends StatelessWidget {
  Products({
    super.key,
    this.foodProducts,
    this.petAccessories,
    this.petMedicines,
  });
  final PetAccessories? petAccessories;
  final PetMedicines? petMedicines;
  final PetFoodProducts? foodProducts;

  final Cartcontroller cartcontroller = Get.put(Cartcontroller());

  @override
  Widget build(BuildContext context) {
    final productSection = petAccessories ?? petMedicines ?? foodProducts;
    if (productSection == null) {
      return const SizedBox.shrink();
    }
    final productlabel = (productSection is PetMedicines)
        ? productSection.labelName
        : (productSection is PetAccessories)
            ? productSection.labelName
            : (productSection is PetFoodProducts)
                ? productSection.labelName
                : '';
    final productdescription = (productSection is PetMedicines)
        ? productSection.labelShortDescription
        : (productSection is PetAccessories)
            ? productSection.labelShortDescription
            : (productSection is PetFoodProducts)
                ? productSection.labelShortDescription
                : '';
    final products = (productSection is PetMedicines)
        ? productSection.medicines
        : (productSection is PetAccessories)
            ? productSection.accessories
            : (productSection is PetFoodProducts)
                ? productSection.foodProducts
                : [];
    return Column(
      children: [
        ConsultationHeader(
          title: productlabel ?? '',
          subtitle: productdescription ?? '',
          onPressedViewAll: () {},
          showViewAllButton: true,
        ),
        Container(
          constraints: const BoxConstraints(maxHeight: 200, minHeight: 200),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            itemCount: products?.length,
            itemBuilder: (context, index) {
              final product = products![index];
              return ProductsTile(
                product: product,
                onclicked: () {
                  cartcontroller.additemtoCart(Producttype.products, product);
                  print(cartcontroller.cartitems.length);
                },
              );
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
