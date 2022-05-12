import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ScreenTab extends StatelessWidget {
  const ScreenTab({Key? key, required this.text, required this.fontWeight, required this.textColor}) : super(key: key);
  final String text;
  final FontWeight fontWeight;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 20),
      child: InkWell(
        onTap: () {},
        child: AutoSizeText(
          text,
          minFontSize: 16,
          maxFontSize: 18,
          style: TextStyle(fontWeight: fontWeight, color: textColor),
        ),
      ),
    );
  }
}
