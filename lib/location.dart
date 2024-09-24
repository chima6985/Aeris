import 'package:geolocator/geolocator.dart';
import 'dart:developer';

class Location {
  Location({this.latitude, this.longitude});
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      log(e.toString());
    }
  }
}
