import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:pet_app/Home/model/HomedataModel.dart';
import 'package:pet_app/Utils/LocationService.dart';
import 'package:pet_app/Utils/globals.dart';

import '../../Networkmanager/PetAppRest.dart';

class Homerootcontroller extends GetxController {
  var latitude = 0.0.obs;
  var longitude = 0.0.obs;
  final LocationService _locationService = LocationService();
  var isLoading = false.obs;
  // var hasFetchedData = false.obs; // Flag to track data fetching
  // var errormessage = ''.obs;
  // var bannerimages = <String>[];
  // var popularservices = <Services>[].obs;
  // PetConditions petConditions = PetConditions();
  // PetBehaviors petBehaviors = PetBehaviors();
  // PetSymptoms petSymptoms = PetSymptoms();
  // PetFoodProducts petFoodProducts = PetFoodProducts();
  // PetAccessories petAccessories = PetAccessories();
  // PetMedicines petMedicines = PetMedicines();
  // LabTestServices labTestServices = LabTestServices();
  // GroomingServices groomingServices = GroomingServices();
  // PetClinics petClinics = PetClinics();
  // PetConsultationImage petConsultationImage = PetConsultationImage();
  // PetDiagnosticsImage petDiagnosticsImage = PetDiagnosticsImage();
  // PetFoodProductImage petFoodProductImage = PetFoodProductImage();
  // Consultation pampersImage = Consultation();
  // AtHomeDoctorsModel doctorsModel = AtHomeDoctorsModel();
  var bottombarIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // fetchHomescreendata();
  }

  void bottombarnavigation(int index) {
    bottombarIndex(index);
  }

  void fetchLocation() async {
    try {
      Position position = await _locationService.getCurrentLocation();
      latitude.value = position.latitude;
      longitude.value = position.longitude;
      await storeUserLocation(position);
    } catch (e) {
      print("Error fetching location: $e");
    }
  }

  fetchHomescreendata() async {
    var latitude = await getLatitude();
    var longitude = await getLongitude();
    isLoading(true);
    var petapprest = Petapprest<HomedataModel>(baseUrl);
    var endpoint =
        'rest/homeScreenServices?languageCode=en&latitude=$latitude&longitude=$longitude';
    try {
      var result = await petapprest.get(
        endpoint,
        // (data) => HomedataModel.fromJson(data),
        (status) => print(status),
        Authentication.tokenauth,
      );
      bannerimages.assignAll(
          result!.homeScreen!.banners!.homeBanners!.map((e) => e.bannerImage!));
      popularservices.assignAll(result.homeScreen!.popularServices!.services!);
      petConditions = result.homeScreen!.petConditions!;
      petBehaviors = result.homeScreen!.petBehaviors!;
      petSymptoms = result.homeScreen!.petSymptoms!;
      petFoodProducts = result.homeScreen!.petFoodProducts!;
      petAccessories = result.homeScreen!.petAccessories!;
      petMedicines = result.homeScreen!.petMedicines!;
      labTestServices = result.homeScreen!.labTestServices!;
      groomingServices = result.homeScreen!.groomingServices!;
      petClinics = result.homeScreen!.petClinics!;
      petConsultationImage = result.homeScreen!.petConsultationImage!;
      petDiagnosticsImage = result.homeScreen!.petDiagnosticsImage!;
      petFoodProductImage = result.homeScreen!.petFoodProductImage!;
      doctorsModel = result.homeScreen!.atHomeDoctors!;
      hasFetchedData(true); // Data fetched successfully
    } catch (e) {
      errormessage('Failed to fetch home screen data: $e');
      print("Error fetching home screen data: $e");
    } finally {
      isLoading(false);
    }
  }
}
