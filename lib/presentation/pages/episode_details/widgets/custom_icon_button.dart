import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/constants/colors.dart';

class CustomIconButton extends StatelessWidget {
  final EdgeInsetsGeometry buttonPadding;
  final IconData icon;
  final double iconSize;
  final VoidCallback? onPressed;

  const CustomIconButton({Key? key, required this.buttonPadding, required this.icon, required this.iconSize, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: buttonPadding,
      child: IconButton(onPressed: onPressed, icon: Icon(icon, size: iconSize, color: whiteColor)),
    );
  }
}
