import 'package:flutter/material.dart';
import 'package:morgage_calc/constants/colors.dart';
import 'package:morgage_calc/constants/text.dart';

class RadioButton extends StatelessWidget {
  final int value;
  final int groupValue;
  final ValueChanged onchanged;
  final String text;
  const RadioButton(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onchanged,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.slateThree.toColor(),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: RadioListTile(
          tileColor: AppColor.slateThree.toColor(),
          title: BodyText(text: text),
          value: value,
          groupValue: groupValue,
          onChanged: onchanged,
          activeColor: AppColor.slateSeven.toColor()),
    );
  }
}
