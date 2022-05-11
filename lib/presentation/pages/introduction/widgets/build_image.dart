import 'package:flutter/material.dart';

Widget buildImage(String assetName, [double width = 350]) {
  return Image.asset('assets/$assetName', width: width);
}
