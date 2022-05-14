import 'package:auto_size_text/auto_size_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/paddings.dart';
import 'package:flutter/material.dart';

class IntroductionScreenCustomButton extends StatelessWidget {
  const IntroductionScreenCustomButton({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        Container(
          padding: introductionScreenButtonsPadding,
          decoration: const BoxDecoration(color: introductionScreenButtonsColor, borderRadius: BorderRadius.all(Radius.circular(25))),
          child: AutoSizeText(
            buttonText,
            minFontSize: 17,
            maxFontSize: 21,
            style: const TextStyle(fontWeight: FontWeight.w600, color: whiteColor),
          ),
        ),
      ],
    );
  }
}
