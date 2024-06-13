import 'package:get/get.dart';
import 'package:pet_app/PetRegistration/Models/PetinfoModel.dart';

class PetRegistrationController extends GetxController {
  var isLoading = false.obs;
  
  Future<void> submitPetInfo(Petinfomodel petinfo) async {
    isLoading.value = true;
    
    final response = await postPetInfo(petinfo);
    
    if (response != null && response.statusCode == 200) {
      // Handle success
      Get.snackbar('Success', 'Pet information submitted successfully');
    } else {
      // Handle error
      Get.snackbar('Error', 'Failed to submit pet information');
    }

    isLoading.value = false;
  }
  
  Future<Response?> postPetInfo(Petinfomodel petinfo) async {
    const url = 'http://localhost:3000/users';
    
    final response = await GetConnect().post(url, petinfo.toJson());
    
    return response;
  }
}
