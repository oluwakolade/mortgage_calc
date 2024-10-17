import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morgage_calc/constants/colors.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color color;
  const HeaderText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
          color: color, fontSize: 16.0, fontWeight: FontWeight.w700),
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;

  const LabelText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
          color: AppColor.slateFive.toColor(),
          fontSize: 12.0,
          fontWeight: FontWeight.normal),
    );
  }
}

class BodyText extends StatelessWidget {
  final String text;
  const BodyText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
          color: AppColor.slateNine.toColor(),
          fontSize: 14.0,
          fontWeight: FontWeight.w700),
    );
  }
}

class MajorText extends StatelessWidget {
  final String text;
  const MajorText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
          color: AppColor.lime.toColor(),
          fontSize: 34.0,
          fontWeight: FontWeight.w500),
    );
  }
}

class Paragraph extends StatelessWidget {
  final String text;

  const Paragraph({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
        color: AppColor.slateThree.toColor(),
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
      ),
      textAlign: TextAlign.center,
    );
  }
}
