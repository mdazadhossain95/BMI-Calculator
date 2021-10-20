import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'constants.dart';
=======

const labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFFFFFFFF));
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc


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
<<<<<<< HEAD
          color: Colors.white,
=======
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
<<<<<<< HEAD
          style: kLabelTextStyle,
=======
          style: labelTextStyle,
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
        ),
      ],
    );
  }
}
