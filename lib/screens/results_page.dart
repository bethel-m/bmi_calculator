import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.resultInterpretation})
      : super(key: key);
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Results",
                style: kResultsPageText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kResultContainerTopText,
                  ),
                  Text(
                    bmiResult,
                    style: kNumberTextStyle,
                  ),
                  Text(
                    resultInterpretation,
                    textAlign: TextAlign.center,
                    style: kBottomContainerTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: "RE-CALCULATE",
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
