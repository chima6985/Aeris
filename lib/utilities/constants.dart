import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
    fontFamily: 'DMSans',
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontSize: 14);

const kBottomContTextStyle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 24);

const kMiddleContStyle = TextStyle(
    fontFamily: 'DMSans',
    fontWeight: FontWeight.w700,
    color: Color(0XffFFFFFF));

const kActiveCardColor = Color(0XFFFFFFFF);
const kInactiiveCardColor = Color(0xFF8862FC);
const kBackgroundColor = Color(0xFF7047EB);
const kNotModalColor = Color(0XFF737272);
const apiKey = '8e39b429d28e028745f57125333388f8';

const kInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  icon: Icon(
    Icons.location_city,
    size: 30,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none),
);
