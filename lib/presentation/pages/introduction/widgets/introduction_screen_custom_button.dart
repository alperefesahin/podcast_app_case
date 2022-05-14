import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/widgets/introduction_screen_custom_text.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          decoration: const BoxDecoration(color: introductionScreenButtonsColor, borderRadius: BorderRadius.all(Radius.circular(25))),
          child: IntroductionScreenCustomText(
            text: buttonText,
            minFontSize: 17,
            maxFontSize: 21,
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
