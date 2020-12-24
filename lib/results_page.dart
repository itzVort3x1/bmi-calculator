import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'reusable_card.dart';
import 'Bottom_button.dart';

class ResultsPage  extends StatelessWidget {

  ResultsPage({this.bmiResult, this.interpretation, this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: KTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),
                    style: KResultTextStyle,
                  ),
                  Text(bmiResult,
                    style: KBMITextStyle,
                  ),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(ButtonTitle: 'RE-CALCULATE', onTap: () {
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
