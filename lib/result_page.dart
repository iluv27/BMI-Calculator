// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {super.key,
      required this.weightTexts,
      required this.weightEvaluation,
      required this.weightResult});

  late String weightResult;
  late String weightEvaluation;
  late String weightTexts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 36),
            ),
          ),
          ReusableCard(
            colours: kActiveCardColor,
            cardChild: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    weightEvaluation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green.shade300,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    child: Text(
                      weightResult,
                      textAlign: TextAlign.center,
                      style: kNumberTextStyle,
                    ),
                  ),
                  Text(weightTexts,
                      textAlign: TextAlign.center, style: kLabelTextStyle),
                ],
              ),
            ),
          ),
          BottomNav(
              textBar: 'RE-CALCULATE',
              tapChange: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
