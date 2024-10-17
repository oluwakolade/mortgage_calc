import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morgage_calc/components/button.dart';
import 'package:morgage_calc/components/radio_button.dart';
import 'package:morgage_calc/constants/colors.dart';
import 'package:morgage_calc/constants/text.dart';
import 'package:morgage_calc/constants/textfield.dart';
import 'dart:math';

class FormContainer extends StatefulWidget {
  final Function(double, double) onCalculate;
  const FormContainer({super.key, required this.onCalculate});

  @override
  State<FormContainer> createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  final formKey = GlobalKey<FormState>();

//controllers
  TextEditingController amountController = TextEditingController();
  TextEditingController termController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  int selectedOption = 0;

  // Function to handle radio button change

  //repayment calculation

  double? monthlyRepayment;
  double? interestOnlyRepayment;

  //function to calculate monthly repayment
  double calculateMonthlyRepayment(double p, double r, int y) {
    double monthlyRate = r / 100 / 12;
    int total = y * 12;

    return p *
        (monthlyRate * pow((1 + monthlyRate), total)) /
        (pow((1 + monthlyRate), total) - 1);
  }

//calculate interest only repayment
  double calculateInterestRepayment(double p, double r) {
    double monthlyRate = r / 100 / 12;
    return p * monthlyRate;
  }

  // Calculate the total amount to be  repaid over the mortgage term
  double totalRepaid(double p, int y) {
    return p * y * 12;
  }

  // Function to handle form validation and calculation

  void repaymentAmount() {
    if (formKey.currentState!.validate()) {
      try {
        double? mortgageAmount = double.tryParse(amountController.text);
        double? mortgageRate = double.tryParse(rateController.text);
        int? mortgageTerm = int.tryParse(termController.text);

        // Ensure values are not null after parsing
        if (mortgageAmount == null ||
            mortgageRate == null ||
            mortgageTerm == null) {
          throw Exception('Invalid input values');
        }

        double monthlyResult;
        double totalResult;

        if (selectedOption == 1) {
          monthlyResult = calculateMonthlyRepayment(
              mortgageAmount, mortgageRate, mortgageTerm);
          totalResult = monthlyResult * 12 * mortgageTerm;
        } else {
          monthlyResult =
              calculateInterestRepayment(mortgageAmount, mortgageRate);
          totalResult = mortgageAmount;
        }

        widget.onCalculate(monthlyResult, totalResult);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter valid numeric values.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderText(
                  text: "Mortgage Calculator ",
                  color: AppColor.slateNine.toColor(),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      // Clear all the inputs and results
                      amountController.clear();
                      termController.clear();
                      rateController.clear();
                      monthlyRepayment = null;
                      interestOnlyRepayment = null;
                    });
                  },
                  child: Text(
                    "Clear All",
                    style: GoogleFonts.plusJakartaSans(
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 25,
            ),

            //FORM

            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //AMOUNT TEXTFILED
                  FormInputAmount(
                    controller: amountController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      final parsedValue = double.tryParse(value);
                      if (parsedValue == null) {
                        return 'Please enter a valid number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      //YEARS TEXTFIELD
                      FormInputYears(
                        controller: termController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          final parsedValue = int.tryParse(value);
                          if (parsedValue == null) {
                            return 'Please enter a valid number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      //RATE TEXTFIELD
                      FormInputRate(
                        controller: rateController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          final parsedValue = double.tryParse(value);
                          if (parsedValue == null) {
                            return 'Please enter a valid number';
                          }
                          return null;
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const LabelText(text: "Mortage Type"),
                  const SizedBox(
                    height: 5,
                  ),

                  //RADIO BUTTON
                  RadioButton(
                      value: 1,
                      groupValue: selectedOption,
                      onchanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                      text: "Repayment"),
                  const SizedBox(
                    height: 8,
                  ),

                  RadioButton(
                      value: 2,
                      groupValue: selectedOption,
                      onchanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                      text: "Interest Only"),
                  const SizedBox(
                    height: 20,
                  ),

                  // CALCULATE BUTTON
                  Button(onTap: repaymentAmount)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
