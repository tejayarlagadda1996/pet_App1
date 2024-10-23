library pet_app.globals;

import 'package:geolocator/geolocator.dart';
import 'package:pet_app/Login/model/Signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

String baseUrl = "http://192.168.1.19:8080/";
String placesapi = "https://maps.googleapis.com/maps/api/place/";

Future<void> storeUserData(SigninModel data) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('loginStatus', true);
  await prefs.setString('token', data.token ?? '');
  await prefs.setString('userUUID', data.parentCustomerUUID ?? '');
}

Future<void> storeUserLocation(Position position) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('longitude', position.longitude);
  await prefs.setDouble('latitude', position.latitude);
}

Future<bool> getLoginStatus() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool('loginStatus') ?? false;
}

Future<String> getUserUuid() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('userUUID') ?? '';
}

Future<String> getUserToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token') ?? '';
}

Future<double> getLatitude() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getDouble('latitude') ?? 0.0;
}


Future<double> getLongitude() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getDouble('longitude') ?? 0.0;
}
