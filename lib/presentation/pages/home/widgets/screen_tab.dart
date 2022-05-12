import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ScreenTab extends StatelessWidget {
  const ScreenTab({Key? key, required this.text, required this.fontWeight, required this.textColor, required this.leftPadding}) : super(key: key);
  final String text;
  final FontWeight fontWeight;
  final Color textColor;
  final double leftPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: leftPadding, top: 10),
        child: TextButton(
          onPressed: () {},
          child: AutoSizeText(
            text,
            minFontSize: 16,
            maxFontSize: 18,
            style: TextStyle(fontWeight: fontWeight, color: textColor),
          ),
        ));
  }
}
