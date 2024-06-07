import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Color.fromARGB(255, 159, 159, 159),
            offset: Offset(1, 0),
          )
        ],
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {}, // add functionality
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Color.fromRGBO(237, 109, 78, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {}, // add functionality
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(237, 109, 78, 1),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Center(
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
