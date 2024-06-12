import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlidingImages extends StatefulWidget {
  const SlidingImages({super.key});

  @override
  State<SlidingImages> createState() => _SlidingImagesState();
}

class _SlidingImagesState extends State<SlidingImages> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 18, 0, 12),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.9,
              child: PageView(
                controller: _pageController,
                children: [
                  _buildPage('At Home Service', 'assets/treatment_image_1.png'),
                  _buildPage('Clinic Service', 'assets/treatment_image_1.png'),
                  _buildPage('Other Service', 'assets/treatment_image_1.png'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: const SlideEffect(
              activeDotColor: Color.fromRGBO(237, 109, 78, 1),
              dotColor: const Color.fromARGB(255, 201, 201, 201),
              dotHeight: 6,
              dotWidth: 6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 211, 211, 211),
          ),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 80),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(11, 83, 81, 1),
                    ),
                    minFontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  AutoSizeText(
                    'Lorem ipsum dolor sit amet consectetur. Sit lacinia elit sit tincidunt scelerisque amet.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                    minFontSize: 12,
                    maxFontSize: 14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
