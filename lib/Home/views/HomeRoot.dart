import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Cart/CartRoot.dart';
import 'package:pet_app/Home/controllers/HomeRootController.dart';
import 'package:pet_app/Home/views/HomeWidget.dart';
import 'package:pet_app/Profile/ProfileRoot.dart';
import 'package:pet_app/Utils/AppTheme.dart';

class HomeRoot extends StatefulWidget {
  const HomeRoot({super.key});

  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot> {
  final Homerootcontroller homerootcontroller = Get.put(Homerootcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: homerootcontroller.homePageController,
        children: [
          HomeWidget(),
          Container(),
          const CartRoot(),
          ProfileRoot()
        ],
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Apptheme.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: const [
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
          child: Obx(
            () => BottomNavigationBar(
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
              currentIndex: homerootcontroller.bottombarIndex.value,
              showUnselectedLabels: false,
              selectedItemColor: Apptheme.apptheme,
              unselectedItemColor: Apptheme.grey,
              onTap: homerootcontroller.bottombarnavigation,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
