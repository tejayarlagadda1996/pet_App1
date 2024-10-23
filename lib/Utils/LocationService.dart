import 'package:geolocator/geolocator.dart';
 
class LocationService {
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
 
    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, return an error or prompt the user
      throw Exception('Location services are disabled.');
    }
 
    // Check for location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, return an error
        throw Exception('Location permissions are denied.');
      }
    }
 
    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied, return an error
      throw Exception('Location permissions are permanently denied.');
    }
 
    // If permissions are granted, get the current location
    return await Geolocator.getCurrentPosition();
  }
}