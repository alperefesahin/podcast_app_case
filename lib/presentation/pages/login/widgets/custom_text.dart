import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LoginPageCustomText extends StatelessWidget {
  const LoginPageCustomText({
    Key? key,
    required this.padding,
    required this.text,
    required this.textStyle,
    required this.minFontSize,
    required this.maxFontSize,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final String text;
  final TextStyle textStyle;
  final double minFontSize;
  final double maxFontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AutoSizeText(text, minFontSize: minFontSize, maxFontSize: maxFontSize, style: textStyle),
    );
  }
}
