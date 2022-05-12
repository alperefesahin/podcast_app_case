import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:flutter/material.dart';

class ColoredRectangle extends StatelessWidget {
  const ColoredRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 170,
        decoration: const BoxDecoration(
          color: coloredRectangleColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
