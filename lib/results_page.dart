import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              "Your Result",
              style: kResultsPageText,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                color: kActiveCardColour,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "OVERWEIGHT",
                      style: kResultContainerTopText,
                    ),
                  ),
                  Center(
                    child: Text(
                      "26.7",
                      style: kResultPageWeightNumberTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      "you have a higher than noral body weight. Try to exercise more",
                      style: kResultsPageWeightCommentTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: kBottomContainerTextStyle,
                  ),
                ),
                margin: EdgeInsets.only(top: 10),
                color: kBottomCardColour,
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
