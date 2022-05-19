import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/home/constants/colors.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 5),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications,
          color: whiteColor,
        ),
      ),
    );
  }
}
