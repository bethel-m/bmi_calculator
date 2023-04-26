import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class TopCardsContents extends StatelessWidget {
  const TopCardsContents({
    super.key,
    required this.icon,
    required this.gender,
    this.iconColour = const Color(0xFF8D8E98),
  });
  final IconData icon;
  final String gender;
  final Color iconColour;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColour,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
