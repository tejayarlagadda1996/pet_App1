import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final String? imgUrl;
  final String? imagepath;
  const BannerImage({
    super.key,
    this.imgUrl,
    this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: imagepath != null
          ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
                imagepath!,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
          )
          : imgUrl != null
              ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    imgUrl!,
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width,
                  ),
              )
              : const SizedBox.shrink(),
    );
  }
}
