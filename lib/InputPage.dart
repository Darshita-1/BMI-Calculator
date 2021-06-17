import 'package:bmi_calculator/Result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Card.dart';
import 'Gender.dart';
import 'Constant.dart';
import 'Roundbutton.dart';
import 'Result.dart';
import 'BottonButton.dart';
import 'BMI.dart';

enum Gen {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gen g;
  int height = 180;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cards(
                    onpress: () {
                      setState(() {
                        g = Gen.male;
                      });
                    },
                    childwidget:
                        Gender(i: FaIcon(FontAwesomeIcons.mars), g: 'MALE'),
                    colour: (g == Gen.male) ? ac : c,
                  ),
                ),
                Expanded(
                  child: Cards(
                    onpress: () {
                      setState(() {
                        g = Gen.female;
                      });
                    },
                    childwidget:
                        Gender(i: FaIcon(FontAwesomeIcons.venus), g: 'FEMALE'),
                    colour: (g == Gen.female) ? ac : c,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Cards(
                colour: c,
                childwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: labelstyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: nostyle,
                        ),
                        Text(
                          ' cm',
                          style: labelstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8D98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newheight) {
                          setState(() {
                            height = newheight.toInt();
                          });
                        },
                        min: 100.0,
                        max: 260.0,
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cards(
                    colour: c,
                    childwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: labelstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: nostyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              f: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              i: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundbutton(
                              f: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              i: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Cards(
                    colour: c,
                    childwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: labelstyle,
                        ),
                        Text(
                          age.toString(),
                          style: nostyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              f: () {
                                setState(() {
                                  age--;
                                });
                              },
                              i: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundbutton(
                              f: () {
                                setState(() {
                                  age++;
                                });
                              },
                              i: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onpressed: () {
              BMI cal = BMI(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                            BMIno: cal.BMICAL(),
                            BMIdata: cal.Instruction(),
                            BMIsuggest: cal.msg(),
                          )));
            },
            Display: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
