import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = activeCardColour;
  Color femaleCardColour = inactiveCardColour;
  Gender userGender = Gender.female;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF000000),
      ),
      body: Column(
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
                          ? activeCardColour
                          : inactiveCardColour,
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
                          ? activeCardColour
                          : inactiveCardColour,
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
        ],
      ),
    );
  }
}
