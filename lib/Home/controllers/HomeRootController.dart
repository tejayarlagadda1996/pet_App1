import 'package:get/get.dart';
import 'package:pet_app/Models/GroomingPackage.dart';
import 'package:pet_app/Models/doctor.dart';
import 'package:pet_app/Models/lab_test.dart';
import 'package:pet_app/Models/product.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';

class Homerootcontroller extends GetxController {
  var isLoading = true.obs;
  var products = <Product>[].obs;
  var doctorsList = <Doctor>[].obs;
  var packages = <GroomingPackage>[].obs;
  var labtests = <LabTest>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
    fetchDoctors();
    fetchGroomingPackages();
    fetchLabTests();
  }

  void handlestatuscode(int statusCode) {
    if (statusCode == 200 || statusCode == 201) {
      isLoading(false);
    } else {
      print('Request failed with status: $statusCode');
    }
  }

  void fetchProducts() async {
    final rest = Petapprest<List<Product>>('http://localhost:3000/');
    final result = await rest.getListOfObjects('products', (json) => (json).map((item) => Product.fromJson(item)).toList());
    if (result != null) {
      products.assignAll(result);
      handlestatuscode(200); 
    } else {
      handlestatuscode(500); 
    }
  }

  void fetchDoctors() async {
    final rest = Petapprest<List<Doctor>>('http://localhost:3000/');
    final result = await rest.getListOfObjects('doctors', (json) => (json).map((item) => Doctor.fromJson(item)).toList());
    if (result != null) {
      doctorsList.assignAll(result);
      handlestatuscode(200); 
    } else {
      handlestatuscode(500); 
    }
  }

  void fetchGroomingPackages() async {
    final rest = Petapprest<List<GroomingPackage>>('http://localhost:3000/');
    final result = await rest.getListOfObjects('groomingPackages', (json) => (json).map((item) => GroomingPackage.fromJson(item)).toList());
    if (result != null) {
      packages.assignAll(result);
      handlestatuscode(200);
    } else {
      handlestatuscode(500);
    }
  }

  void fetchLabTests() async {
    final rest = Petapprest<List<LabTest>>('http://localhost:3000/');
    final result = await rest.getListOfObjects('labTests', (json) => (json).map((item) => LabTest.fromJson(item)).toList());
    if (result != null) {
      labtests.assignAll(result);
      handlestatuscode(200);
    } else {
      handlestatuscode(500);
    }
  }
}
