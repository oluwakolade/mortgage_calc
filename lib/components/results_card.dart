import 'package:flutter/material.dart';
import 'package:morgage_calc/constants/colors.dart';
import 'package:morgage_calc/constants/text.dart';

class ResultsCard extends StatelessWidget {
  final String monthResult;
  final String totalResult;

  const ResultsCard(
      {super.key, required this.monthResult, required this.totalResult});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.slateNine.toColor(),
        borderRadius: BorderRadius.circular(10),
        border:
            Border(top: BorderSide(color: AppColor.lime.toColor(), width: 3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LabelText(text: "Your monthly repayments"),
          const SizedBox(
            height: 10,
          ),
          MajorText(
            text: monthResult,
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          const LabelText(text: "Total you'll repay over the term"),
          const SizedBox(
            height: 10,
          ),
          HeaderText(
            text: totalResult,
            color: AppColor.white.toColor(),
          )
        ],
      ),
    );
  }
}
