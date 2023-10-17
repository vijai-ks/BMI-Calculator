import 'package:flutter/material.dart';

// This is an important customized widget in place of Floating Action Button.
// All Properties are took from Floating Action Button and built using RoundIconButton.
class RoundIconButton extends StatelessWidget {
  IconData icon;
  VoidCallback onPress;

  RoundIconButton({required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
