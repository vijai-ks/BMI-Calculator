import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// This is a Customized Card Widget that can be re-used every time
class GenderCards extends StatelessWidget {
  String gender;
  IconData genderIcon;

  GenderCards({required this.gender, required this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 100.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelStyle,
        )
      ],
    );
  }
}
