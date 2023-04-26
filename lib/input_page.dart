import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'top_cards.dart';
import 'constants.dart';
import 'results_page.dart';

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInActiveCardColour;
  Color femaleCardColor = kInActiveCardColour;
  GenderType? selectedGender;
  int height = 180;
  int weight = 100;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    color: selectedGender == GenderType.male
                        ? kActiveCardColour
                        : kInActiveCardColour,
                    child: TopCardsContents(
                      icon: kMaleIcon,
                      gender: kMale,
                      iconColour: kIconColour,
                    ),
                  ),
                ),
                Expanded(
                    child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  child: TopCardsContents(
                    icon: kFemaleIcon,
                    gender: kFemale,
                    iconColour: kIconColour,
                  ),
                  color: selectedGender == GenderType.female
                      ? kActiveCardColour
                      : kInActiveCardColour,
                )),
              ],
            ),
          ),
          Expanded(
              child: ReuseableCard(
            color: kActiveCardColour,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      "cm",
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    // SliderThemeData(
                    activeTickMarkColor: Colors.orange,
                    inactiveTickMarkColor: Colors.orange,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    // )
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 300,
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.toInt();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultsPage();
                  },
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: kBottomContainerTextStyle,
                ),
              ),
              margin: EdgeInsets.only(top: 10),
              color: kBottomCardColour,
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, this.icon, required this.onPressed})
      : super(key: key);
  final IconData? icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 50.0),
    );
  }
}
