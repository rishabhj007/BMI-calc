import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class GenderSelector extends StatelessWidget {

  GenderSelector({@required this.widgetIcon,@required this.gender});
  final widgetIcon;
  final gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          widgetIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kStyling,
        ),
      ],
    );
  }
}