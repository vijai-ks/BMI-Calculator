import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'customized_cards.dart';

const bottomContainerHeight = 80.0;
const primaryCardColor = Color(0xFF1D1E33);
const secondaryCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = secondaryCardColor;
  Color femaleCardColor = secondaryCardColor;

  // 1 = MALE and  2 = FEMALE
  void updateSelectedCardColor(int genderSelection) {
    //Selected gender is male
    if (genderSelection == 1) {
      if (maleCardColor == secondaryCardColor) {
        maleCardColor = primaryCardColor;
        femaleCardColor = secondaryCardColor;
      } else {
        maleCardColor = secondaryCardColor;
      }
    }
    //Selected gender is female
    else if (genderSelection == 2) {
      if (femaleCardColor == secondaryCardColor) {
        femaleCardColor = primaryCardColor;
        maleCardColor = secondaryCardColor;
      } else {
        femaleCardColor = secondaryCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateSelectedCardColor(1);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        childCard: GenderCards(
                          genderIcon: FontAwesomeIcons.mars,
                          gender: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateSelectedCardColor(2);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        childCard: GenderCards(
                          genderIcon: FontAwesomeIcons.venus,
                          gender: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: primaryCardColor,
                childCard: Column(),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: primaryCardColor,
                      childCard: Column(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: primaryCardColor,
                      childCard: Column(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
