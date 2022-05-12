import 'package:auto_size_text/auto_size_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/colored_rectangle.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/green_straight_line.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/notification_icon.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/screen_tab.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/search_bar.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(child: SearchBar()),
            NotificationIcon(),
          ],
        ),
        Row(
          children: [
            Column(
              children: const [
                ScreenTab(text: forYou, fontWeight: FontWeight.w500, textColor: whiteColor, leftPadding: 20),
                GreenStraightLine(),
              ],
            ),
            const ScreenTab(text: podcast, fontWeight: FontWeight.w400, textColor: screenTabTextsColor, leftPadding: 5),
            const ScreenTab(text: radio, fontWeight: FontWeight.w400, textColor: screenTabTextsColor, leftPadding: 5),
            const ScreenTab(text: audiobook, fontWeight: FontWeight.w400, textColor: screenTabTextsColor, leftPadding: 5),
          ],
        ),
        const ColoredRectangle(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitleText(titleText: continueListening),
            IconButton(
              padding: const EdgeInsets.only(right: 5),
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios, color: whiteColor, size: 20)),
          ],
        ),
      ],
    );
  }
}
