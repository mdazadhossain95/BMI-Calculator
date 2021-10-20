import 'package:bmi_calculator_app/components/icon_content.dart';
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard(this.colour, this.cardChild, {Key? key})
      : super(key: key);

  final Color colour;
  final Widget cardChild;
  // final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
