import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/controllers/HomeRootController.dart';
import 'package:pet_app/Home/views/Products.dart';
import 'package:pet_app/Home/views/SelectAService.dart';
import 'package:pet_app/Utils/AppTheme.dart';
import 'package:pet_app/Utils/BannerImage.dart';
import 'package:pet_app/Utils/Consultation/ConditionConsultation.dart';
import 'package:pet_app/Utils/DoctorCardList/DoctorConsultation.dart';
import 'package:pet_app/Utils/Searchbar.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});
  final Homerootcontroller homeRootController = Get.put(Homerootcontroller());

  @override
  Widget build(BuildContext context) {
    final popularServices = homeRootController.popularServices;
    final foodProducts = homeRootController.petFoodProducts;
    final accessories = homeRootController.petAccessories;
    final medicines = homeRootController.petMedicines;
    final atHomeDoctors = homeRootController.doctorsModel;
    return Scaffold(
      backgroundColor: Apptheme.white,
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Apptheme.apptheme,
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
        backgroundColor: Apptheme.white,
        surfaceTintColor: Apptheme.white,
        elevation: 4,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => (homeRootController.isLoading.value)
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: CarouselSlider(
                        items: List.generate(
                          homeRootController.bannerimages.length,
                          (index) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Image.network(
                                homeRootController.bannerimages[index],
                                fit: BoxFit.fitWidth,
                              ),
                            );
                          },
                        ),
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 2.0,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                      ),
                    ),
                    const Searchbar(
                        searchbarHintText: 'Search for toys, grooming ...'),
                    (popularServices.value == null)
                        ? const Center(child: Text('No Data'))
                        : SelectAService(
                            popularServices: popularServices.value!,
                          ),
                    (foodProducts.value == null)
                        ? const Center(child: Text('No foodProducts'))
                        : Products(
                            foodProducts: foodProducts.value!,
                          ),
                    DoctorConsultation(doctors: atHomeDoctors.value!),
                    BannerImage(
                      imgUrl: homeRootController.petConsultationImage.value,
                    ),
                    (accessories.value == null)
                        ? const Center(child: Text('No accessories'))
                        : Products(
                            petAccessories: accessories.value!,
                          ),
                    ConditionConsultation(),
                    (medicines.value == null)
                        ? const Center(child: Text('No Medicines'))
                        : Products(
                            petMedicines: medicines.value!,
                          ),
                    // GroomingPackageCard(packageslist:homerootcontroller.packages),
                    // SymptomConsultation(),
                    // const BannerImage(imgUrl: "assets/onboarding_image_3.png"),
                    // HomeLabTest(labtests:homerootcontroller.labtests),
                    // BehaviourConsultation(),
                    // const BannerImage(imgUrl: "assets/onboarding_image_4.png"),
                    // const BannerImage(imgUrl: "assets/onboarding_image_5.png"),
                  ],
                ),
        ),
      ),
    );
  }
}
