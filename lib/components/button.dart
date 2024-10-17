import 'package:flutter/material.dart';
import 'package:morgage_calc/constants/colors.dart';
import 'package:morgage_calc/constants/text.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  const Button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 250,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: AppColor.lime.toColor(),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.calculate_outlined,
              color: AppColor.slateSeven.toColor(),
            ),
            const SizedBox(
              width: 10,
            ),
            const BodyText(text: "Calculate Repayments")
          ],
        ),
      ),
    );
  }
}
