import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/home/constants/colors.dart';

class ColoredRectangle extends StatelessWidget {
  const ColoredRectangle({Key? key, required this.height, required this.width, required this.rightPadding, required this.bottomPadding, required this.topPadding}) : super(key: key);
  final double height;
  final double width;
  final double rightPadding;
  final double bottomPadding;
  final double topPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: rightPadding, top: topPadding, bottom: bottomPadding),
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: coloredRectangleColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
