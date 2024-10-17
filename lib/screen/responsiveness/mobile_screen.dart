import 'package:flutter/material.dart';
import 'package:morgage_calc/components/calculated_results.dart';
import 'package:morgage_calc/components/empty_results.dart';
import 'package:morgage_calc/components/form_container.dart';
import 'package:morgage_calc/constants/colors.dart';

class MorgageCalculatorHomeMobile extends StatefulWidget {
  const MorgageCalculatorHomeMobile({super.key});

  @override
  State<MorgageCalculatorHomeMobile> createState() =>
      _MorgageCalculatorHomeMobileState();
}

class _MorgageCalculatorHomeMobileState
    extends State<MorgageCalculatorHomeMobile> {
  // Calculated values
  double? monthlyRepayment;
  double? totalRepayment;

  // Method to update the results when the form is submitted
  void updateResults(double monthResult, double totalResult) {
    setState(() {
      monthlyRepayment = monthResult;
      totalRepayment = totalResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.slateOne.toColor(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.zero,
            margin: const EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
                color: AppColor.white.toColor(),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FormContainer(
                  onCalculate: updateResults,
                ),
                (monthlyRepayment != null && totalRepayment != null)
                    ? Flexible(
                        child: CalculatedResults(
                          monthResult: monthlyRepayment!,
                          totalResult: totalRepayment!,
                        ),
                      )
                    : const Flexible(child: EmptyResults())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
