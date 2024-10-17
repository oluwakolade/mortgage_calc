import 'package:flutter/material.dart';
import 'package:morgage_calc/screen/responsiveness/desktop_screen.dart';
import 'package:morgage_calc/screen/responsiveness/layout.dart';
import 'package:morgage_calc/screen/responsiveness/mobile_screen.dart';

class MorgageCalculatorHome extends StatefulWidget {
  const MorgageCalculatorHome({super.key});

  @override
  State<MorgageCalculatorHome> createState() => _MorgageCalculatorHomeState();
}

class _MorgageCalculatorHomeState extends State<MorgageCalculatorHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
          mobileBody: MorgageCalculatorHomeMobile(),
          desktopBody: MorgageCalculatorHomeDesktop()),
    );
  }
}
