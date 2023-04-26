import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.title,
    required this.onPress,
  });
  final String title;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            title,
            style: kBottomContainerTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: kBottomCardColour,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
