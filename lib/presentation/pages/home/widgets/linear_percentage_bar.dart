import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LinearPercentageBar extends StatelessWidget {
  const LinearPercentageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        width: 140,
        lineHeight: 13.5,
        percent: 0.75,
        backgroundColor: percentageIndicatorBackgroundColor,
        progressColor: percentageIndicatorForegroundColor,
        barRadius: const Radius.circular(20));
  }
}
