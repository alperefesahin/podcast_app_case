import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class IntroductionScreenCustomText extends StatelessWidget {
  const IntroductionScreenCustomText({Key? key, required this.text, required this.minFontSize, required this.maxFontSize, required this.textStyle}) : super(key: key);
  final String text;
  final double minFontSize;
  final double maxFontSize;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: minFontSize,
      maxFontSize: maxFontSize,
      textAlign: TextAlign.left,
      style: textStyle,
    );
  }
}
