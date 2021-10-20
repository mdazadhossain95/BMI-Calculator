import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      // theme: ThemeData(
      //   scaffoldBackgroundColor: const Color(0xFF111428),
      //   textTheme: const TextTheme(
      //     bodyText1: TextStyle(color: Colors.white),
      //   ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      // ),
=======
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF111428),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
>>>>>>> 7aa81d5f2c6e0065a710155cdc3349d8db2f11fc
      home: const InputPage(),
    );
  }
}
