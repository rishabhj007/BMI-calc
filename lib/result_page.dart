import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String kBMI;
  final String yourBMI;
  final String advice;

  ResultsPage({this.kBMI, this.advice, this.yourBMI});

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  "Your Results",
                  style: kTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: Color(kActiveBoxColor),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        yourBMI,
                        style: kBMIIndicator,
                      ),
                      Text(
                        kBMI,
                        style: kBMITextStyle,
                      ),
                      Text(
                        advice,
                        style: kStyling,
                      ),
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Text(
                  "ReCalculate",
                  textAlign: TextAlign.center,
                  style: kBottomButtonText,
                ),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: kBottomBoxHeight,
                color: Color(kBottomBoxColor),
              ),
            ),
          ]),
    );
  }
}
