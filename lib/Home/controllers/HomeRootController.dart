import 'package:flutter/widgets.dart';
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
  var errormessage = ''.obs;
  var bannerimages = <String>[];
  var popularServices = Rxn<PopularServices>();
  var petConditions = Rxn<PetConditions>();
  var petBehaviors = Rxn<PetBehaviors>();
  var petSymptoms = Rxn<PetSymptoms>();
  var petFoodProducts = Rxn<PetFoodProducts>();
  var petAccessories = Rxn<PetAccessories>();
  var petMedicines = Rxn<PetMedicines>();
  var labTestServices = Rxn<LabTestServices>();
  var groomingServices = Rxn<GroomingServices>();
  var petClinics = Rxn<PetClinics>();
  var petConsultationImage = ''.obs;
  var petDiagnosticsImage = Rxn<PetDiagnosticsImage>();
  var petFoodProductImage = Rxn<PetFoodProductImage>();
  var pampersImage = Rxn<Consultation>();
  var doctorsModel = Rxn<AtHomeDoctors>();
  var bottombarIndex = 0.obs;
  final PageController homePageController = PageController();

  @override
  void onInit() {
    super.onInit();
    fetchHomescreendata();
  }

  void bottombarnavigation(int index) {
    bottombarIndex(index);
    homePageController.jumpToPage(index);
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
        (data) => HomedataModel.fromJson(data),
        (status) => print(status),
        Authentication.tokenauth,
      );
      bannerimages.assignAll(
          result!.homeScreen!.banners!.homeBanners!.map((e) => e.bannerImage!));
      popularServices.value =
          result.homeScreen?.popularServices ?? PopularServices();
      petConditions.value = result.homeScreen?.petConditions ?? PetConditions();
      petBehaviors.value = result.homeScreen?.petBehaviors ?? PetBehaviors();
      petSymptoms.value = result.homeScreen?.petSymptoms ?? PetSymptoms();
      petFoodProducts.value =
          result.homeScreen?.petFoodProducts ?? PetFoodProducts();
      petAccessories.value =
          result.homeScreen?.petAccessories ?? PetAccessories();
      petMedicines.value = result.homeScreen?.petMedicines ?? PetMedicines();
      labTestServices.value =
          result.homeScreen?.labTestServices ?? LabTestServices();
      groomingServices.value =
          result.homeScreen?.groomingServices ?? GroomingServices();
      petClinics.value = result.homeScreen?.petClinics ?? PetClinics();
      petConsultationImage.value =
          result.homeScreen?.petConsultationImage?.consultation?.imageUrl ?? '';
      petDiagnosticsImage.value =
          result.homeScreen?.petDiagnosticsImage ?? PetDiagnosticsImage();
      petFoodProductImage.value =
          result.homeScreen?.petFoodProductImage ?? PetFoodProductImage();
      doctorsModel.value = result.homeScreen?.atHomeDoctors ?? AtHomeDoctors();
    } catch (e) {
      errormessage('Failed to fetch home screen data: $e');
      print("Error fetching home screen data: $e");
    } finally {
      isLoading(false);
    }
  }
}
