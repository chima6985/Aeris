// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
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
                                '🌧️',
                                style: TextStyle(fontSize: 50),
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
                                  '25',
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
                            'Abuja, Nigeria * 2:00 pm',
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
