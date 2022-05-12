import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:flutter/material.dart';

class GreenStraightLine extends StatelessWidget {
  const GreenStraightLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 3,
        width: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: greenStraightLineColor,
        ),
      ),
    );
  }
}
