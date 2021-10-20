import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
<<<<<<< HEAD
import 'constants.dart';
import 'results_page.dart';
=======

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
<<<<<<< HEAD
  Gender userGender = Gender.female;
  int height = 180;
  int weight = 60;
  int age = 19;
=======
  Color maleCardColour = activeCardColour;
  Color femaleCardColour = inactiveCardColour;
  Gender userGender = Gender.female;
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF000000),
      ),
      body: Column(
<<<<<<< HEAD
        crossAxisAlignment: CrossAxisAlignment.stretch,
=======
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
        children: [
          Expanded(
            child: Row(
              children: [
                //1st Row
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        userGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      userGender == Gender.male
<<<<<<< HEAD
                          ? kActiveCardColour
                          : kInactiveCardColour,
=======
                          ? activeCardColour
                          : inactiveCardColour,
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
                      const IconContent(FontAwesomeIcons.male, "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        userGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      userGender == Gender.female
<<<<<<< HEAD
                          ? kActiveCardColour
                          : kInactiveCardColour,
=======
                          ? activeCardColour
                          : inactiveCardColour,
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
                      const IconContent(FontAwesomeIcons.female, "FEMALE"),
                    ),
                  ),
                ),
                // ),
              ],
            ),
          ),
          //2nd row
          Expanded(
            child: ReuseableCard(
<<<<<<< HEAD
              kActiveCardColour,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: const Color(0xFFB8B5B5),
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),

          //3rd row
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //3rd Row
                Expanded(
                  child: ReuseableCard(
                      kActiveCardColour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  weight--;
                                });
                              }),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  weight++;
                                });
                              }),
                            ],
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: ReuseableCard(
                      kActiveCardColour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  age--;
                                });
                              }),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  age++;
                                });
                              }),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ResultsPage()));
            },
            child: Container(
              child: const Center(
                  child: Text(
                'CALCULATE',
                style: kLargeButtonTextStyle,
              )),
              color: kBottomContainerColour,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )
=======
              activeCardColour,
              Column(
                children: const [Text('HEIGHT')],
              ),
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
        ],
      ),
    );
  }
}
<<<<<<< HEAD

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(this.icon, this.onPressed);

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: const BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
=======
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
