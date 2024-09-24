// ignore_for_file: library_private_types_in_public_api

// import 'package:aeris/screens/city_screen.dart';
import 'package:aeris/screens/city_screen.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../utilities/today_weather.dart';
import '../utilities/notification_modal.dart';
import 'package:aeris/utilities/forecast_date.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Change bottomCardColor to active color on tap
  Color bottomCardColor = kInactiiveCardColor.withOpacity(0.05);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: Container(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                          label: const Text('Lagos Nigeria '),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: kInactiiveCardColor),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const CityScreen();
                                    },
                                  ),
                                );
                              },
                              icon: const SizedBox(
                                  width: 21.33,
                                  height: 26,
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: kInactiiveCardColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    enableDrag: false,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      ),
                                    ),
                                    builder: (context) {
                                      return Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.only(top: 22),
                                        decoration: const BoxDecoration(
                                          color: kActiveCardColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24),
                                              topRight: Radius.circular(24)),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 152,
                                              height: 43,
                                              decoration: BoxDecoration(
                                                color: kBackgroundColor
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  'Your Notifications',
                                                  style: TextStyle(
                                                      color:
                                                          kInactiiveCardColor),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 26.0, top: 15),
                                                child: Text(
                                                  'New',
                                                  style: kBottomContTextStyle
                                                      .copyWith(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            const NotificationModal(
                                              time: '10 minuites ago',
                                              text:
                                                  'Its a sunny day in your location',
                                              imagepath: 'images/vector.png',
                                              isShowDivider: false,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 26.0, top: 15),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Earlier',
                                                  style: kBottomContTextStyle
                                                      .copyWith(
                                                          fontSize: 10,
                                                          color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            const NotificationModal(
                                              time: '1 day ago',
                                              text:
                                                  'Its a sunny day in your location',
                                              imagepath: 'images/vector.png',
                                            ),
                                            const SizedBox(height: 10),
                                            const NotificationModal(
                                              time: '2 days ago',
                                              text:
                                                  'Its a sunny day in your location',
                                              imagepath: 'images/vector.png',
                                            ),
                                            const SizedBox(height: 14),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 130,
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
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'images/weather_icon.png',
                                    width: 90.71,
                                    height: 90.34,
                                  ),
                                ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '20',
                                    style: kMiddleContStyle.copyWith(
                                        fontSize: 155),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: Text(
                                      '\u00B0\u1D9c',
                                      style: kTextStyle.copyWith(fontSize: 70),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Lagos, Nigeria * 2:00 pm',
                              style: kMiddleContStyle.copyWith(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 75.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: kInactiiveCardColor,
                      ),
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            enableDrag: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                            ),
                            builder: (context) {
                              return Container(
                                padding: const EdgeInsets.fromLTRB(
                                    35, 22, 35, 29.24),
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24)),
                                  color: kActiveCardColor,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 47,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            kBackgroundColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Forecast Report',
                                              style: kMiddleContStyle.copyWith(
                                                  color: kInactiiveCardColor),
                                            ),
                                            const SizedBox(
                                                width:
                                                    2), // Space between text and icon
                                            const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: kInactiiveCardColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 29,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Today',
                                        style: kMiddleContStyle.copyWith(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        TodayWeather(
                                          text: '8 a.m',
                                          imagePath: 'images/sun_icon.png',
                                          temp: '28',
                                        ),
                                        SizedBox(width: 24),
                                        TodayWeather(
                                          text: '10 a.m',
                                          imagePath: 'images/sun_icon.png',
                                          temp: '28',
                                        ),
                                        SizedBox(width: 24),
                                        TodayWeather(
                                          text: '12 a.m',
                                          imagePath: 'images/full_sun.png',
                                          temp: '28',
                                        ),
                                        SizedBox(width: 24),
                                        TodayWeather(
                                          text: '2 p.m',
                                          imagePath: 'images/sun_icon.png',
                                          temp: '29',
                                        ),
                                        SizedBox(width: 24),
                                        TodayWeather(
                                          text: '4 p.m',
                                          imagePath: 'images/full_sun.png',
                                          temp: '30',
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 39,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Next Forecast',
                                                style:
                                                    kMiddleContStyle.copyWith(
                                                        fontSize: 24.64,
                                                        color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              height: 36.05,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                color: kInactiiveCardColor,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Nineteen Days',
                                                  style: kBottomContTextStyle
                                                      .copyWith(fontSize: 11.5),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15.0,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.02),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 10, right: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ForecastDate(
                                                    day: 'November 12',
                                                    imagePath:
                                                        'images/sun_icon.png',
                                                    temper: '28'),
                                                ForecastDate(
                                                    day: 'November 13',
                                                    imagePath:
                                                        'images/sun_icon.png',
                                                    temper: '28'),
                                                ForecastDate(
                                                    day: 'November 14',
                                                    imagePath:
                                                        'images/sun_icon.png',
                                                    temper: '28'),
                                                ForecastDate(
                                                    day: 'November 15',
                                                    imagePath:
                                                        'images/sun_icon.png',
                                                    temper: '28'),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Forecast Report',
                              style: kBottomContTextStyle,
                            ),
                            SizedBox(width: 10), // Space between text and icon
                            Icon(Icons.keyboard_arrow_up),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
