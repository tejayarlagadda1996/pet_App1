import 'package:flutter/material.dart';
import 'package:pet_app/ProductDetails/views/ProductCommentTile.dart';

class ProductDetailComments extends StatelessWidget {
  ProductDetailComments({super.key});

  final List<Map<String, dynamic>> productComments = [
    {
      'userImg': 'assets/welcome_dog_icon.png',
      'userName': 'Rakesh Singh',
      'commentDate': '11/06/2024',
      'commentRating': 4.5,
      'commentText':
          'My dog loves this product, super healthy and tasty, sometimes I eat it too. :0',
    },
    {
      'userImg': 'assets/welcome_cat_icon.png',
      'userName': 'Rakesh Singh',
      'commentDate': '11/06/2024',
      'commentRating': 5.0,
      'commentText':
          'My dog loves this product, super healthy and tasty, sometimes I eat it too. :0 My dog loves this product, super healthy and tasty, sometimes I eat it too. :0',
    },
    {
      'userImg': 'assets/welcome_dog_icon.png',
      'userName': 'Rakesh Singh',
      'commentDate': '11/06/2024',
      'commentRating': 3.5,
      'commentText':
          'Good.',
    },
    {
      'userImg': 'assets/welcome_cat_icon.png',
      'userName': 'Rakesh Singh',
      'commentDate': '11/06/2024',
      'commentRating': 0.0,
      'commentText':
          'Disgusted',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            children: List.generate(
              productComments.length,
              (index) {
                final comment = productComments[index];
                return Column(
                  children: [
                    ProductCommentTile(
                      userImg: comment['userImg'],
                      userName: comment['userName'],
                      commentDate: comment['commentDate'],
                      commentRating: comment['commentRating'],
                      commentText: comment['commentText'],
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical:  8.0),
                        child: Divider(
                          color: Color.fromRGBO(178, 178, 178, 0.3),
                          thickness: 1,
                          indent: 16,
                          endIndent: 16,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
