import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Login/view/LoginRoot.dart';
import 'package:pet_app/Models/product.dart';

class HomeBestSellerTile extends StatelessWidget {

  final Cartcontroller cartcontroller = Get.put(Cartcontroller());

  final Product product;

  final bool isLoggedIn;

  final VoidCallback onclicked;


  HomeBestSellerTile({
    super.key,
    required this.product,
    required this.isLoggedIn,
    required this.onclicked
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.48,
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
              child: Image.asset(product.productImagePath, fit: BoxFit.cover),
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
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: AutoSizeText(
                          product.productName, // product name
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
                          "\$${product.productPrice}", // product price
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
                  onPressed: isLoggedIn
                      ? onclicked
                      : () {
                          Get.to(() => const LoginRoot(showSignIn: true));
                        }, 
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.all(0),
                    shadowColor: Colors.transparent,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(237, 109, 78, 1),
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
}
