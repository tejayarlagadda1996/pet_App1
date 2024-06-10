import 'package:get/get.dart';
import 'package:pet_app/onboarding/models/lab_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class LabTestController extends GetxController {
  var isLoading = true.obs;
  var labTestList = <LabTest>[].obs;

  @override
  void onInit() {
    fetchLabTests();
    super.onInit();
  }

  Future<void> fetchLabTests() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('http://localhost:3000/labTests'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = jsonDecode(response.body);
        final labTests = jsonResponse.map((labTest) => LabTest.fromJson(labTest)).toList();
        labTestList.assignAll(labTests);
      } else {
        throw Exception('Failed to load lab tests');
      }
    } catch (e) {
      throw Exception('Failed to load lab tests: $e');
    } finally {
      isLoading(false);
    }
  }
}
