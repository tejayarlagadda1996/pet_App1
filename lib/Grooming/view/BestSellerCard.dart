import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/view/Counter.dart';
import 'package:pet_app/Grooming/view/Package_detail.dart';

class BestSellercard extends StatelessWidget {
  final String packagename;
  final String ratings;
  final String reviews;
  final String duration;
  final List<String> packageservices;
  final double packageprice;
  final bool showIconButton;
  final  bool isselected;

  const BestSellercard({super.key, required this.packagename, required this.ratings, required this.reviews, required this.duration, required this.packageservices, required this.packageprice, required this.showIconButton, required this.isselected});
  
  void giftBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context,ScrollController scrollController){
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/giftimage.png', height: 200, fit: BoxFit.fitWidth),
                BestSellercard(
                  packagename: packagename,
                  ratings: ratings,
                  reviews: reviews,
                  duration: duration,
                  packageservices: packageservices,
                  packageprice: packageprice,
                  showIconButton: false,
                  isselected: false,
                ),
              ],
                        ),
            );

          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/packageimage.png'),
                  const Text('Package',style: TextStyle(color: Colors.orangeAccent)),
                ],
              ),
              if(showIconButton)
              IconButton(
                onPressed: (){giftBottomSheet(context);},icon: Image.asset('assets/gifticon.png'))
            ],
          ),
          Text(packagename,style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Color.fromRGBO(239, 109, 78, 1),
                size: 12,
              ),

              Text(ratings,style: const TextStyle(fontSize: 12)),

              const SizedBox(width: 10),

              const Icon(Icons.reviews,size: 12,color: Color.fromRGBO(239, 109, 78, 1)),

              Text(reviews,style: const TextStyle(fontSize: 12)),

              const Icon(Icons.alarm,size: 12,color: Color.fromRGBO(239, 109, 78, 1)),

              Text(duration,style: const TextStyle(fontSize: 12)),

              TextButton(
                onPressed: () {
                packageDetails(context);
                },
                child: const Text('View'))
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          Wrap(
              spacing: 4,
              runSpacing: 2,
              children: List.generate(packageservices.length,(index) {
                  return Text(packageservices[index],style: const TextStyle(color: Colors.grey),
                  );
                },
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(packageprice.toString()),
              isselected?
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Add to cart'),
                ):Counter()
            ],
          ),
        ],
      ),
    ));
  }
}