import 'package:get/get.dart';
import 'package:pet_app/Cart/model/Cartmodel.dart';

class Cartcontroller extends GetxController{

  var cartitems = [].obs;
  Producttype? currenttype;

  void additemtoCart (Producttype type,dynamic item){
    if(currenttype == null||type == currenttype){
      cartitems.add(item);
      currenttype = type;
    }
  }

  void deleteiteminCart(Producttype type,dynamic item){
    if(currenttype == type && currenttype != null){
      cartitems.remove(item);
    }
  }

  void clearCart(){
    cartitems.clear();
    currenttype = null;
  }
}