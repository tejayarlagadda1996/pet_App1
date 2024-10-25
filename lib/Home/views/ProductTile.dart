import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Home/model/HomedataModel.dart';
import 'package:pet_app/Utils/AppTheme.dart';

class ProductsTile extends StatelessWidget {
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  final dynamic product;
  final VoidCallback onclicked;

  ProductsTile({
    super.key,
    required this.onclicked,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
      final productImage = getProductImage(product);
    final productName = getProductName(product);
    final productPrice = getProductPrice(product);
    return Container(
      margin: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
            child: SizedBox(
              width: 80,
              height: 100,
              child: Image.network(
                productImage ?? '',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8, left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: AutoSizeText(
                          productName ?? '',
                          style: const TextStyle(fontWeight: FontWeight.w400),
                          maxFontSize: 12,
                          minFontSize: 12,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 65,
                        child: AutoSizeText(
                          "\$$productPrice", // product price
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                          maxFontSize: 16,
                          minFontSize: 16,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: onclicked,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.all(0),
                    shadowColor: Colors.transparent,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Apptheme.apptheme,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
   String? getProductImage(dynamic product) {
    if (product is Medicines) return product.medicineImage;
    if (product is Accessories) return product.accessoriesImage;
    if (product is FoodProducts) return product.productImage;
    return null;
  }

  String? getProductName(dynamic product) {
    if (product is Medicines) return product.medicineName;
    if (product is Accessories) return product.accessoriesName;
    if (product is FoodProducts) return product.productName;
    return null;
  }

  int? getProductPrice(dynamic product) {
    if (product is Medicines) return product.grossPrice;
    if (product is Accessories) return product.grossPrice;
    if (product is FoodProducts) return product.grossPrice;
    return null;
  }
}
