import 'package:get/get.dart';
import 'package:pet_app/onboarding/models/doctor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DoctorController extends GetxController {
  var isLoading = true.obs;
  var doctorList = <Doctor>[].obs;

  @override
  void onInit() {
    fetchDoctors();
    super.onInit();
  }

  Future<void> fetchDoctors() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('http://localhost:3000/doctors'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = jsonDecode(response.body);
        final doctors = jsonResponse.map((doctor) => Doctor.fromJson(doctor)).toList();
        doctorList.assignAll(doctors);
      } else {
        throw Exception('Failed to load doctor');
      }
    } catch (e) {
      throw Exception('$e');
    } finally {
      isLoading(false);
    }
  }
}
