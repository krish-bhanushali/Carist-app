import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';


class GenderWidget extends StatelessWidget {
  GenderWidget({@required this.genderIcon,@required this.genderIdentity});
  final Icon genderIcon;
  final String genderIdentity;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        genderIcon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderIdentity,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}