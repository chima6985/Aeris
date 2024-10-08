// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'package:intl/intl.dart';
import '../services/weather.dart';
import 'dart:developer';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key, this.cityWeather});

  // ignore: prefer_typing_uninitialized_variables
  final cityWeather;

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  WeatherModel cityWeather = WeatherModel();
  late int temperature;
  late String weatherIcon;
  late String cityName;
  late String weatherMessage;

  @override
  void initState() {
    super.initState();
    updateCityUI(widget.cityWeather);
  }

  void updateCityUI(weatherData) {
    var condition = weatherData['weather'][0]['id'];
    weatherIcon =
        condition == null ? '' : cityWeather.getWeatherIcon(condition);
    double temp = weatherData['main']['temp'];
    temperature = temp.toInt();
    // ignore: unnecessary_null_comparison
    weatherMessage =
        temperature == null ? '' : cityWeather.getMessage(temperature);
    cityName = weatherData['name'];
    log(temperature.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kActiveCardColor.withOpacity(0.1),
                          ),
                          child: TextButton.icon(
                            icon: const Icon(Icons.location_pin),
                            onPressed: () {},
                            label: const Text('Abuja Nigeria'),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: kInactiiveCardColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ]),
                ],
              ),
              const SizedBox(
                height: 140,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kActiveCardColor.withOpacity(0.1),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Center(
                                  child: Text(
                                '⛈️',
                                style: const TextStyle(fontSize: 50),
                              )),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Today',
                                    style: kMiddleContStyle.copyWith(
                                        fontSize: 30.0),
                                  ),
                                  const Text(
                                    'Mon, 26 Apr',
                                    style: kTextStyle,
                                  )
                                ],
                              )
                            ],
                          ),
                          Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$temperature',
                                  style:
                                      kMiddleContStyle.copyWith(fontSize: 130),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Text(
                                    '\u00B0\u1D9c',
                                    style:
                                        kMiddleContStyle.copyWith(fontSize: 35),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Abuja, Nigeria * ${DateFormat.jm().format(DateTime.now())}',
                            style: kMiddleContStyle.copyWith(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 240,
              )
            ],
          ),
        ),
      ),
    );
  }
}
