import 'package:flutter/material.dart';
import 'constants.dart';

class TodayWeather extends StatefulWidget {
  final String imagePath;
  final String text;
  final String temp;
  const TodayWeather(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.temp});

  @override
  _TodayWeatherState createState() => _TodayWeatherState();
}

class _TodayWeatherState extends State<TodayWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.temp,
                style: kMiddleContStyle.copyWith(
                    color: Colors.black, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:0),
                child: Text(
                  '\u00B0\u1D9c',
                  style: kTextStyle.copyWith(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.86, bottom: 13.86),
            child: Image.asset(
              widget.imagePath,
              width: 33.1,
              height: 33.58,
            ),
          ),
          Text(
            widget.text,
            style: kMiddleContStyle.copyWith(fontSize: 12, color: Colors.black),
          )
        ],
      ),
    );
  }
}