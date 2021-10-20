import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {
  const IconContent(this.icon, this.label, {Key? key}) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
