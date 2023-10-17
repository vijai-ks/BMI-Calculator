import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_buton.dart';

// This is the result page for the BMI Calculator Application.
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // To get the values passed from the named routes. It is in a map format.
    final routeArgs =
        ModalRoute.of(context)?.settings?.arguments as Map<String, String>;

    // Extracting values from the parameters passed from the named routes.
    final BMI = routeArgs['BMI'].toString();
    final result = routeArgs['result'].toString();
    final interpretaion = routeArgs['interpretaion'].toString();

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
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result.toUpperCase(),
                        style: kBMIResultTextStyle,
                      ),
                      Text(
                        BMI,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretaion,
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
                  // To return back to the previous screen, we are poping the current screen.
                  Navigator.pop(context);
                },
                buttonText: 'RE-CALCULATE',
              ),
            ],
          ),
        ));
  }
}
