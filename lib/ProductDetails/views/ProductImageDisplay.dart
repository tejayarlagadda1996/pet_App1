import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImageDisplay extends StatefulWidget {
  const ProductImageDisplay({super.key});

  @override
  State<ProductImageDisplay> createState() => _ProductImageDisplayState();
}

class _ProductImageDisplayState extends State<ProductImageDisplay> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 18, 0, 12),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: _pageController,
                children: [
                  _buildPage('assets/best_seller_product.png'),
                  _buildPage('assets/best_seller_product.png'),
                  _buildPage('assets/best_seller_product.png'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: const SlideEffect(
              activeDotColor: Color.fromRGBO(237, 109, 78, 1),
              dotColor: Color.fromARGB(255, 201, 201, 201),
              dotHeight: 6,
              dotWidth: 6,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildPage(String imagePath) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
        child: Image.asset(imagePath, height: 100),
    );
  }
}
