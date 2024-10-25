import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:pet_app/Utils/AppTheme.dart';

class HomeServiceTile extends StatelessWidget {
  final String name;
  final String imgUrl;
  final Callback onTileTap;

  const HomeServiceTile({
    super.key,
    required this.name,
    required this.imgUrl,
    required this.onTileTap,
  });

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Container(
        decoration: BoxDecoration(
          color: Apptheme.appthemelite,
          borderRadius: BorderRadius.circular(12),
        ),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.28,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                color: Apptheme.plaincolor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Image.network(imgUrl, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Center(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: constraints.maxWidth * 0.125, // Adjust the multiplier as needed
                      ),
                      textAlign: TextAlign.center,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

