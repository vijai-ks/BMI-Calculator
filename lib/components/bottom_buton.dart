import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// This widget is Calculate Button separated for reusing it.
class BottomButton extends StatelessWidget {
  String buttonText;
  VoidCallback onTap;

  // Constructor for Button to get the details
  BottomButton({required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kBottomTextStyle,
          ),
        ),
      ),
    );
  }
}
