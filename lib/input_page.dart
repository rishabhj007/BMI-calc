import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/GenderWidget.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/constant.dart';

enum Gender {
  Male,
  Female,
}

int height;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                  colour: selectedGender == Gender.Male
                      ? Color(kActiveBoxColor)
                      : Color(kInactiveBoxColor),
                  cardChild: GenderSelector(
                      widgetIcon: FontAwesomeIcons.mars, gender: 'MALE'),
                ),
                ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.Male;
                    });
                  },
                  colour: selectedGender == Gender.Female
                      ? Color(kActiveBoxColor)
                      : Color(kInactiveBoxColor),
                  cardChild: GenderSelector(
                      widgetIcon: FontAwesomeIcons.venus, gender: 'FEMALE'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(kActiveBoxColor),
              cardChild: Column(
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kStyling,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        "$height",
                        style: kNumberStyling,
                      ),
                      Text(
                        "CM",
                        style: kStyling,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(kBottomBoxColor),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      divisions: 1,
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                      min: 150.0,
                      max: 200.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  colour: Color(kActiveBoxColor),
                ),
                ReusableCard(
                  colour: Color(kActiveBoxColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomBoxHeight,
            color: Color(kBottomBoxColor),
          )
        ],
      ),
    );
  }
}
