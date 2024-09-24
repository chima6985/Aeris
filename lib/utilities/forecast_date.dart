import 'package:aeris/utilities/constants.dart';
import 'package:flutter/material.dart';

class ForecastDate extends StatelessWidget {
  final String day;
  final String imagePath;
  final String temper;
  final bool isShowDivider;

  const ForecastDate({
    super.key,
    required this.day,
    required this.imagePath,
    required this.temper,
    this.isShowDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    day,
                    style: kMiddleContStyle.copyWith(
                        fontSize: 13, color: Colors.black),
                  ),
                  Image.asset(
                    imagePath,
                    width: 48.17,
                    height: 27.04,
                  ),
                  Row(
                    children: [
                      Text(
                        temper,
                        style: kMiddleContStyle.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text(
                          '\u00B0\u1D9c',
                          style: kTextStyle.copyWith(
                              fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
           const  SizedBox(
              height: 8.01,
            ),
            if (isShowDivider)
            const   SizedBox(
                width: double.infinity,
                child:  Divider(
                  color: Colors.black,
                  height: 17,
                  
                  thickness: 0.5,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
