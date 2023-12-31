import 'package:flutter/material.dart';

// This widget is built mainly for creating cards.
// This is a single card widget for Customized_Cards widget.
class ReusableCard extends StatelessWidget {
  Color colour;
  Widget childCard;
  VoidCallback onPress;

  ReusableCard(
      {required this.colour, required this.childCard, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(15.0),
        child: childCard,
      ),
    );
  }
}
