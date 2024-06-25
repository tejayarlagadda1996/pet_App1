import 'package:get/get.dart';
import 'package:pet_app/Grooming/model/Package.dart';
import 'package:pet_app/Grooming/model/ReceiverInfo.dart';

class Cartcontroller extends GetxController{
  var cartitems=<Package>[].obs;

  void addTocart(Package item){
    int index = cartitems.indexWhere((element)=>element.packagename==item.packagename);
    if(index!=-1){
      cartitems[index].quatity++;
    }else{
      cartitems.add(item);
    }
  }

  void removeFromcart(String id){
    cartitems.removeWhere((item)=>item.packagename == id);
  }

  void clearCart() {
    cartitems.clear();
  }

  var receiverinfo=<Receiverinfo>[].obs;

  RxBool receiverdetails= false.obs;

  void fetchreceiverDetails(RxBool value){
    receiverdetails.value=!receiverdetails.value;
  }

}