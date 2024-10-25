import 'package:get/get.dart';
import 'package:pet_app/Networkmanager/PetAppRest.dart';
import 'package:pet_app/PetRegistration/Models/OwnerinfoModel.dart';
import 'package:pet_app/Utils/globals.dart';

class ProfileRootController extends GetxController {
  var userprofile = Rxn<CustomerProfile>();
  getUserProfile() async {
    final userUuid = await getUserUuid();
    final petAppRest = Petapprest<OwnerInfoModel>(baseUrl);
    final result = await petAppRest.get(
      'rest/getCustomerProfile?parentCustomerUUID=$userUuid',
      (data) => OwnerInfoModel.fromJson(data),
      (statuscode) {},
      Authentication.tokenauth,
    );
    if (result != null) {
      if (result.status == 1) {
        userprofile.value = result.customerProfile;
        print(userprofile.value?.image);
      }
    }
  }

  @override
  void onInit() {
    getUserProfile();
    super.onInit();
  }
}
