import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  String buttonText;
  VoidCallback onTap;

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
