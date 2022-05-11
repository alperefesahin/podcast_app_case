import 'package:auto_size_text/auto_size_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/paddings.dart';
import 'package:flutter/material.dart';

Container customButton({required String buttonText}) {
  return Container(
    padding: introductionScreenButtonsPadding,
    decoration: const BoxDecoration(color: introductionScreenButtonsColor, borderRadius: BorderRadius.all(Radius.circular(25))),
    child: AutoSizeText(
      buttonText,
      minFontSize: 17,
      maxFontSize: 21,
      style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
    ),
  );
}
