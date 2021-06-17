import 'package:bmi_calculator/InputPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';
import 'Card.dart';
import 'BottonButton.dart';

class Result extends StatelessWidget {
  Result(
      {@required this.BMIno,
      @required this.BMIdata,
      @required this.BMIsuggest});
  final String BMIno;
  final String BMIdata;
  final String BMIsuggest;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: resultstyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Cards(
              colour: ac,
              childwidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    BMIdata,
                    style: resulttextstyle,
                  ),
                  Text(
                    BMIno,
                    style: BMIstyle,
                  ),
                  Text(
                    BMIsuggest,
                    style: instructstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onpressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            Display: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
