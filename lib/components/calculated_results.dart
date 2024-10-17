import 'package:flutter/material.dart';
import 'package:morgage_calc/components/results_card.dart';
import 'package:morgage_calc/components/results_container.dart';
import 'package:morgage_calc/constants/colors.dart';
import 'package:morgage_calc/constants/text.dart';

class CalculatedResults extends StatelessWidget {
  final double monthResult;
  final double totalResult;
  const CalculatedResults(
      {super.key, required this.monthResult, required this.totalResult});

  @override
  Widget build(BuildContext context) {
    return ResultsContainer(
        widget: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText(text: "Your Results", color: AppColor.white.toColor()),
          const SizedBox(
            height: 15,
          ),
          const Paragraph(
              text:
                  " Your results are shown below based on the information you provided. To adjust the results, edit the form and click “calculate repayments” again."),
          const SizedBox(
            height: 20,
          ),
          ResultsCard(
              monthResult: '\$${monthResult.toStringAsFixed(2)}',
              totalResult: '\$${totalResult.toStringAsFixed(2)}')
        ],
      ),
    ));
  }
}
