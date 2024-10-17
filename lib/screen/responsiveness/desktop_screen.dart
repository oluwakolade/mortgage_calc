import 'package:flutter/material.dart';
import 'package:morgage_calc/components/calculated_results.dart';
import 'package:morgage_calc/components/empty_results.dart';
import 'package:morgage_calc/components/form_container.dart';
import 'package:morgage_calc/constants/colors.dart';

class MorgageCalculatorHomeDesktop extends StatefulWidget {
  const MorgageCalculatorHomeDesktop({super.key});

  @override
  State<MorgageCalculatorHomeDesktop> createState() =>
      _MorgageCalculatorHomeDesktopState();
}

class _MorgageCalculatorHomeDesktopState
    extends State<MorgageCalculatorHomeDesktop> {
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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.zero,
          margin: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
              color: AppColor.white.toColor(),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              FormContainer(
                onCalculate: updateResults,
              ),
              (monthlyRepayment != null && totalRepayment != null)
                  ? CalculatedResults(
                      monthResult: monthlyRepayment!,
                      totalResult: totalRepayment!,
                    )
                  : const EmptyResults()
            ],
          ),
        ),
      ),
    );
  }
}
