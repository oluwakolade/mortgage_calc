import 'package:flutter/material.dart';
import 'package:morgage_calc/components/results_container.dart';
import 'package:morgage_calc/constants/colors.dart';
import 'package:morgage_calc/constants/text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyResults extends StatelessWidget {
  const EmptyResults({super.key});

  @override
  Widget build(BuildContext context) {
    return ResultsContainer(
      widget: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/illustration-empty.svg"),
            const SizedBox(
              height: 10,
            ),
            HeaderText(
                text: "Results shown here", color: AppColor.white.toColor()),
            const SizedBox(
              height: 10,
            ),
            const Paragraph(
              text:
                  " Complete the form and click 'calculate repayments' to see what your monthly repayments would be.",
            )
          ],
        ),
      ),
    );
  }
}
