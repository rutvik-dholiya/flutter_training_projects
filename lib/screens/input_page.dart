import 'package:bmi/calculator.dart';
import 'package:bmi/components/basic_card.dart';
import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/components/labeled_icon.dart';
import 'package:bmi/components/round_icon_button.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selGender;
  double height = 150.0;
  int weight = 55;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selGender = Gender.male;
                      });
                    },
                    child: BasicCard(
                      cardColor: Color((selGender == Gender.male)
                          ? kActiveColor
                          : kInactiveColor),
                      cardChild: LabeledIcon(
                        icon: FontAwesomeIcons.mars,
                        iconColor: Color((selGender == Gender.male)
                            ? kActiveIconColor
                            : kInactiveIconColor),
                        label: "MALE",
                        labelColor: Color((selGender == Gender.male)
                            ? kActiveTextColor
                            : kInactiveTextColor),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selGender = Gender.female;
                      });
                    },
                    child: BasicCard(
                      cardColor: Color((selGender == Gender.female)
                          ? kActiveColor
                          : kInactiveColor),
                      cardChild: LabeledIcon(
                        icon: FontAwesomeIcons.venus,
                        iconColor: Color((selGender == Gender.female)
                            ? kActiveIconColor
                            : kInactiveIconColor),
                        label: "FEMALE",
                        labelColor: Color((selGender == Gender.female)
                            ? kActiveTextColor
                            : kInactiveTextColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BasicCard(
              cardColor: Color(kCardColor),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          (height.toInt()).toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          ' cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SliderTheme(
                      data: SliderThemeData(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 7.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 20.0,
                        ),
                        activeTrackColor: Color(0xFFEB1555),
                        inactiveTrackColor: Color(0xFFFFFFFF),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x1FEB1555),
                        trackHeight: 2.5,
                      ),
                      child: Slider(
                        value: height,
                        min: 150.0,
                        max: 210.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BasicCard(
                    cardColor: Color(kCardColor),
                    cardChild: Column(
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
                            RoundIConButton(
                              icon: FontAwesomeIcons.plus,
                              iconSize: 30.0,
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            RoundIConButton(
                              icon: FontAwesomeIcons.minus,
                              iconSize: 30.0,
                              onTap: () {
                                setState(() {
                                  weight--;
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
                  child: BasicCard(
                    cardColor: Color(kCardColor),
                    cardChild: Column(
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
                            RoundIConButton(
                              icon: FontAwesomeIcons.plus,
                              iconSize: 30.0,
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            RoundIConButton(
                              icon: FontAwesomeIcons.minus,
                              iconSize: 30.0,
                              onTap: () {
                                setState(() {
                                  age--;
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
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              Calculator calc = Calculator(h: height.toInt(), w: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmi: calc.calcBMI(),
                    result: calc.getResult(),
                    advice: calc.getAdvice(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
