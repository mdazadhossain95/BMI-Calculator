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
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF111428),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
      home: const InputPage(),
    );
  }
}
