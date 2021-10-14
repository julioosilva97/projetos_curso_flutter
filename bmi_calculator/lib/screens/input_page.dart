import 'package:bmi_calculator/components/bottom_buttom_widget.dart';
import 'package:bmi_calculator/components/round_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/card_content_widget.dart';
import '../constants.dart';
import '../components/reusable_card_widget.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? gender;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Calculador IMC')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male && gender != null
                        ? kActiveColorCard
                        : kInactiveColorCard,
                    cardChild: CardContentWidget(
                      icon: FontAwesomeIcons.mars,
                      description: 'HOMEM',
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female && gender != null
                        ? kActiveColorCard
                        : kInactiveColorCard,
                    cardChild: CardContentWidget(
                      icon: FontAwesomeIcons.venus,
                      description: 'MULHER',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveColorCard,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ALTURA',
                          style: kDescriptionStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kSizeNumber,
                            ),
                            Text(
                              'cm',
                              style: kDescriptionStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E98),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0)),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (double newValue) {
                              setState(
                                () {
                                  height = newValue.round();
                                },
                              );
                            },
                            min: 120.0,
                            max: 220.0,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    color: kActiveColorCard,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PESO',
                        ),
                        Text(
                          weight.toString(),
                          style: kSizeNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButtonWidget(
                              icon: Icons.plus_one,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButtonWidget(
                                icon: Icons.exposure_minus_1,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    color: kActiveColorCard,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'IDADE',
                        ),
                        Text(
                          age.toString(),
                          style: kSizeNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButtonWidget(
                              icon: Icons.plus_one,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButtonWidget(
                                icon: Icons.exposure_minus_1,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButtonWidget(
            title: 'CALCULAR',
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
          )
        ],
      ),
    );
  }
}
