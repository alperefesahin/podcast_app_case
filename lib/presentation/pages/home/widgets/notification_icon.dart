import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:flutter/material.dart';

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
