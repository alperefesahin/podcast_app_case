import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LinearPercentageBar extends StatelessWidget {
  const LinearPercentageBar({Key? key, required this.linearPercentIndicatiorWith, required this.leftPadding}) : super(key: key);
  final double linearPercentIndicatiorWith;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
        padding:  EdgeInsets.only(top: 5, left: leftPadding, right: 10),
        width: linearPercentIndicatiorWith,
        lineHeight: 13.5,
        percent: 0.75,
        backgroundColor: percentageIndicatorBackgroundColor,
        progressColor: percentageIndicatorForegroundColor,
        barRadius: const Radius.circular(20));
  }
}
