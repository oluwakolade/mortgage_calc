import 'package:flutter/material.dart';
import 'package:morgage_calc/screen/morgage_calculator_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '',
      home: MorgageCalculatorHome(),
    );
  }
}
