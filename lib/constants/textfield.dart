import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morgage_calc/constants/colors.dart';
import 'package:morgage_calc/constants/text.dart';

class FormInputAmount extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  const FormInputAmount(
      {super.key, required this.controller, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelText(text: "Mortgage Amount"),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextFormField(
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.slateThree.toColor(),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.lime.toColor(),
                ),
              ),
              prefixIcon: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                    left: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                    bottom: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                  ),
                  color: AppColor.slateOne.toColor(),
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(10),
                  ),
                ),
                child: const BodyText(text: "\$"),
              ),
            ),
            style: GoogleFonts.plusJakartaSans(
                color: AppColor.slateNine.toColor(),
                fontSize: 14.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}

class FormInputYears extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;

  const FormInputYears(
      {super.key, required this.controller, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LabelText(text: "Mortgage Term"),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.slateThree.toColor(),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.lime.toColor(),
                ),
              ),
              suffixIcon: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                    right: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                    bottom: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                  ),
                  color: AppColor.slateOne.toColor(),
                  borderRadius: const BorderRadius.horizontal(
                    right: Radius.circular(10),
                  ),
                ),
                child: const BodyText(text: "Years"),
              ),
            ),
            style: GoogleFonts.plusJakartaSans(
                color: AppColor.slateNine.toColor(),
                fontSize: 14.0,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

class FormInputRate extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;

  const FormInputRate(
      {super.key, required this.controller, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const LabelText(text: "Interest Rate"),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.slateThree.toColor(),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.lime.toColor(),
                ),
              ),
              suffixIcon: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.slateOne.toColor(),
                  border: Border(
                    top: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                    right: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                    bottom: BorderSide(
                      color: AppColor.slateThree.toColor(),
                    ),
                  ),
                  borderRadius: const BorderRadius.horizontal(
                    right: Radius.circular(10),
                  ),
                ),
                child: const BodyText(text: "%"),
              ),
            ),
            style: GoogleFonts.plusJakartaSans(
                color: AppColor.slateNine.toColor(),
                fontSize: 14.0,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
