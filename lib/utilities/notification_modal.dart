import 'package:aeris/utilities/constants.dart';
import 'package:flutter/material.dart';

class NotificationModal extends StatelessWidget {
  final String time;
  final String text;
  final String image;
  final bool isShowDivider;

  const NotificationModal({
    super.key,
    required this.time,
    required this.text,
    required this.image,
    this.isShowDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 28),
              Padding(
                  padding: const EdgeInsets.only(top: 0), child: Text(image)),
              const SizedBox(width: 9),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: kBottomContTextStyle.copyWith(
                        fontSize: 10, color: kNotModalColor),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    text,
                    style: kBottomContTextStyle.copyWith(
                        fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(height: 17),
                ],
              )
            ],
          ),
          if (isShowDivider)
            const Divider(
              color: Colors.black,
              height: 17,
              thickness: 0.5,
            ),
        ],
      ),
    );
  }
}
