import 'package:flutter/material.dart';

Padding textWidget({required EdgeInsetsGeometry padding, required String text, required TextStyle textStyle}) {
  return Padding(
    padding: padding,
    child: Text(text, textAlign: TextAlign.center, style: textStyle),
  );
}
