import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.titleText}) : super(key: key);
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: AutoSizeText(
        titleText,
        maxFontSize: 18,
        minFontSize: 16,
        style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
