// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:aeris/services/location.dart';
import 'package:aeris/utilities/constants.dart';
import 'package:aeris/services/networking.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;

  @override
  void initState() {
    getLocationData();
    super.initState();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    latitude = (location.latitude);
    longitude = (location.longitude);

    NetworkHelper networkHelper = NetworkHelper(
        Url:
            'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    var weatherData = await networkHelper.getData();



  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}


    // log(condition.toString());
    // log(temperature.toString());
    // log(cityName);
    // try {
    //   getData();
    // } catch (e) {
    //   log("Error occurred while fetching data: $e");
    // }