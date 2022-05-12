import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15, top: 25),
      child: Icon(Icons.notifications, color: whiteColor),
    );
  }
}
