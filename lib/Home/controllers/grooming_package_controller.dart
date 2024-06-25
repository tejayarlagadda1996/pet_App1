import 'package:get/get.dart';
import 'package:pet_app/Home/models/grooming_package.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GroomingPackageController extends GetxController {
  var isLoading = true.obs;
  var groomingPackageList = <GroomingPackage>[].obs;

  @override
  void onInit() {
    fetchGroomingPackage();
    super.onInit();
  }

  Future<void> fetchGroomingPackage() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('http://localhost:3000/groomingPackages'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = jsonDecode(response.body);
        final packages = jsonResponse.map((package) => GroomingPackage.fromJson(package)).toList();
        groomingPackageList.assignAll(packages);
      } else {
        throw Exception('Failed to load packages');
      }
    } catch (e) {
      throw Exception('Failed to load packages: $e');
    } finally {
      isLoading(false);
    }
  }
}
