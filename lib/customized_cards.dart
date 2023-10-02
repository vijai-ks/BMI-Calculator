import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);

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
          style: labelStyle,
        )
      ],
    );
  }
}
