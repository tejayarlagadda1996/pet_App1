import 'package:flutter/material.dart';
import 'package:pet_app/Grooming/Packagemodel/Package.dart';
import 'package:pet_app/Grooming/view/Packages.dart';
import 'package:pet_app/Grooming/view/service_tile.dart';

class Gromingwidget extends StatefulWidget {

  const Gromingwidget({super.key});

  @override
  State<Gromingwidget> createState() => _GromingwidgetState();
}

class _GromingwidgetState extends State<Gromingwidget> {
  
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
      'Something',
      'Something'
    ];
    List serviceimages = [
      'assets/Grooming1.png',
      'assets/Grooming2.png',
      'assets/Grooming3.png',
      'assets/Grooming4.png',
      'assets/Grooming5.png',
      'assets/Grooming6.png',
      'assets/Grooming7.png',
      'assets/Grooming8.png',
      'assets/Grooming9.png'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grooming',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
        elevation: 2,
        shadowColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Here is how we groom your pet',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              const Text(
                'We Provide same love & care as you do',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Image.asset('assets/Groomingbanner.png'),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ServiceTile(
                          name: services[0], imgUrl: serviceimages[0])),
                  Expanded(
                      child: ServiceTile(
                          name: services[1], imgUrl: serviceimages[1])),
                  Expanded(
                      child: ServiceTile(
                          name: services[2], imgUrl: serviceimages[2])),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ServiceTile(
                          name: services[3], imgUrl: serviceimages[3])),
                  Expanded(
                      child: ServiceTile(
                          name: services[4], imgUrl: serviceimages[4])),
                  Expanded(
                      child: ServiceTile(
                          name: services[5], imgUrl: serviceimages[5]))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: ServiceTile(
                          name: services[6], imgUrl: serviceimages[6])),
                  Expanded(
                      child: ServiceTile(
                          name: services[7], imgUrl: serviceimages[7])),
                  Expanded(
                      child: ServiceTile(
                          name: services[8], imgUrl: serviceimages[8]))
                ],
              ),
              const SizedBox(height: 20,),
              const Text('BestSeller Packages',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              Packages(packagelist:packagecardlist),
            ],
          ),
        ),
      ),
      
    );
  }
}
