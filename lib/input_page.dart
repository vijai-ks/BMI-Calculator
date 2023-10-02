import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const primaryCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(
                      colour: primaryCardColor,
                      childCard: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 100.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xFF8D8E98),
                            ),
                          )
                        ],
                      ),
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

class ReusableCard extends StatelessWidget {
  Color colour;
  Widget childCard;

  ReusableCard({required this.colour, required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(15.0),
    );
  }
}
