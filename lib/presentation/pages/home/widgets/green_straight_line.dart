import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/home/constants/colors.dart';

class GreenStraightLine extends StatelessWidget {
  const GreenStraightLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 3,
        width: 60,
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: greenStraightLineColor),
      ),
    );
  }
}
