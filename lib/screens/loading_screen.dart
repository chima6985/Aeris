import 'package:flutter/material.dart';
import 'package:aeris/location.dart';
import 'package:http/http.dart';
import 'dart:developer';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    log(location.latitude.toString());
    log(location.longitude.toString());
  }

  void getData() async {
    Response response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=8e39b429d28e028745f57125333388f8'));
    log(response.statusCode.toString());
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}




