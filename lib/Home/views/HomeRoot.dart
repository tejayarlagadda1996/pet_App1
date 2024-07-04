import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/controller/cartcontroller.dart';
import 'package:pet_app/Home/controllers/Authcontroller.dart';
import 'package:pet_app/Home/controllers/HomeRootController.dart';
import 'package:pet_app/Utils/Consultation/BehaviourConsultation.dart';
import 'package:pet_app/Home/views/HomeBestSeller.dart';
import 'package:pet_app/Utils/Consultation/ConditionConsultation.dart';
import 'package:pet_app/Home/views/GroomingPackageCard.dart';
import 'package:pet_app/Home/views/HomeLabTest.dart';
import 'package:pet_app/Utils/BannerImage.dart';
import 'package:pet_app/Utils/DoctorCardList/DoctorConsultation.dart';
import 'package:pet_app/Utils/Searchbar.dart';
import 'package:pet_app/Home/views/SelectAService.dart';
import 'package:pet_app/Utils/Consultation/SymptomConsultation.dart';

class HomeRoot extends StatefulWidget {
  const HomeRoot({super.key});

  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot> {


  String fullAddress =
      "24, Indra Nagar, Gachibowli Circle, Hyderabad, Telangana, India";
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final Authcontroller authcontroller  = Get.put(Authcontroller());
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  final Homerootcontroller homerootcontroller = Get.put(Homerootcontroller());

  @override
  void initState() {
    authcontroller.authsubscription.resume();
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    authcontroller.authsubscription.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 254, 253, 1),
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Text(
          'Home', // add variable
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 242, 98, 98),
                  width: 2.0,
                ),
              ),
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/welcome_dog_icon.png'), // variable image
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BannerImage(imgUrl: "assets/onboarding_image_1.png"),
            // supposed to be an ad?
            const Searchbar(searchbarHintText: 'Search for toys, grooming ...'),
            const SelectAService(),
            HomeBestSeller(
              loginstatus:authcontroller.isLoggedIn.value,
              products: homerootcontroller.products
            ),
            DoctorConsultation(doctorslist: homerootcontroller.doctorsList),
            const BannerImage(imgUrl: "assets/onboarding_image_2.png"),
            ConditionConsultation(),
            GroomingPackageCard(packageslist:homerootcontroller.packages),
            SymptomConsultation(),
            const BannerImage(imgUrl: "assets/onboarding_image_3.png"),
            HomeLabTest(labtests:homerootcontroller.labtests),
            BehaviourConsultation(),
            BannerImage(imgUrl: "assets/onboarding_image_4.png"),
            BannerImage(imgUrl: "assets/onboarding_image_5.png"),
          ],
        ),) 
      ),
      floatingActionButton: FloatingActionButton(
            onPressed: (){
              authcontroller.changeloginstatus();
            },
            child:const Icon(Icons.login),
      ),
      

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                label: 'Orders',
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.shopping_bag),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            showUnselectedLabels: false,
            selectedItemColor: const Color.fromRGBO(237, 109, 78, 1),
            unselectedItemColor: const Color.fromRGBO(179, 177, 176, 1),
            onTap: _onItemTapped,
            backgroundColor:
                Colors.transparent, // Ensure background is transparent
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
