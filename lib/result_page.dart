import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_buton.dart';

class ResultPage extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Your Result',
                    style: kResultTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kPrimaryCardColor,
                  childCard: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'OVERWEIGHT',
                        style: kBMIResultTextStyle,
                      ),
                      Text(
                        '22.3',
                        style: kBMITextStyle,
                      ),
                      Text(
                        'Your BMI is Quite low. You should eat more to stay healthy',
                        textAlign: TextAlign.center,
                        style: kBMITextResultStyle,
                      ),
                    ],
                  ),
                  onPress: () {},
                ),
              ),
              BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonText: 'RE-CALCULATE',
              ),
            ],
          ),
        ));
  }
}
