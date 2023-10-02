import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  Color colour;
  Widget childCard;

  ReusableCard({required this.colour, required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(15.0),
      child: childCard,
    );
  }
}
