// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'constants.dart';

class TodayWeather extends StatelessWidget {
  final String image;
  final String time;
  final String temp;
  const TodayWeather(
      {super.key, required this.image, required this.time, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                temp,
                style: kMiddleContStyle.copyWith(
                    color: Colors.black, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  '\u00B0\u1D9c',
                  style: kTextStyle.copyWith(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 13.86, bottom: 13.86),
              child: Text(
                image,
                style: const TextStyle(fontWeight: FontWeight.w700),
              )),
          Text(
            time,
            style: kMiddleContStyle.copyWith(fontSize: 12, color: Colors.black),
          )
        ],
      ),
    );
  }
}
