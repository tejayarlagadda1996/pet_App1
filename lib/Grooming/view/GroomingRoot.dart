import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/CartRoot.dart';
import 'package:pet_app/Grooming/view/Packages.dart';
import 'package:pet_app/Grooming/view/service_tile.dart';
import 'package:pet_app/Home/controllers/HomeRootController.dart';

class GroomingRoot extends StatelessWidget {
  GroomingRoot({super.key});
  final Homerootcontroller homerootcontroller = Get.put(Homerootcontroller());

  @override
  Widget build(BuildContext context) {
    List services = [
      'Bestseller',
      'Make your package',
      'Pet Bathing',
      'Nail Clipping',
      'Hair cut',
      'Ear/eyes cleaning',
      'Dog Spa',
    ];
    List serviceimages = [
      'assets/Grooming1.png',
      'assets/Grooming2.png',
      'assets/Grooming3.png',
      'assets/Grooming4.png',
      'assets/Grooming5.png',
      'assets/Grooming6.png',
      'assets/Grooming7.png',
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 249, 246, 1),
      appBar: AppBar(
        title: const Text(
          'Grooming',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {Get.to(const CartRoot());}, icon: const Icon(Icons.shopping_cart))
        ],
        elevation: 2,
        shadowColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Here is how we groom your pet',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'We Provide same love & care as you do',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image.asset('assets/Groomingbanner.png'),
                    ),
                  ),
                  StaggeredGrid.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    axisDirection: AxisDirection.down,
                    children: List.generate(
                      services.length,
                      (index) {
                        return ServiceTile(
                            name: services[index],
                            imgUrl: serviceimages[index]);
                      },
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('   BestSeller Packages', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10,),
            Packages(packagelist: homerootcontroller.packages),
          ],
        ),
      ),
    );
  }
}
