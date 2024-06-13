import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  final String imgUrl;
  const DisplayImage({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Image.asset(imgUrl),
      );
  }
}

    // return LayoutBuilder(
    //   builder: (context, constraints) {
    //     double width = constraints.maxWidth * 0.8;
    //     double height = constraints.maxHeight * 0.5;

    //     return Center(
    //       child: Container(
    //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    //         width: width,
    //         height: height,
    //         child: Image.asset(
    //           imgUrl,
    //           fit: BoxFit.cover,
    //           width: width,
    //           height: height,
    //         ),
    //       ),
    //     );
    //   },
    // );