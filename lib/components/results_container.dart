import 'package:flutter/material.dart';
import 'package:morgage_calc/constants/colors.dart';

class ResultsContainer extends StatelessWidget {
  final Widget widget;
  const ResultsContainer({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            color: AppColor.slateSeven.toColor(),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(50),
            ),
          ),
          child: widget),
    );
  }
}
