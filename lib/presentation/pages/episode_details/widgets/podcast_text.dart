import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PodcastText extends StatelessWidget {
  const PodcastText({
    Key? key,
    required this.textColor,
    required this.minFontSize,
    required this.maxFontSize,
    required this.text,
    required this.fontWeight,
    this.textPadding = const EdgeInsets.only(left: 25, top: 10, right: 50),
  }) : super(key: key);

  final Color textColor;
  final double minFontSize;
  final double maxFontSize;
  final String text;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry? textPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: textPadding!,
      child: AutoSizeText(
        text,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(color: textColor, fontWeight: fontWeight),
      ),
    );
  }
}
