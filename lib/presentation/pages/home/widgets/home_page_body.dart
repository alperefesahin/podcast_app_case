import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/colored_rectangle.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/home_page_episodes.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/green_straight_line.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/notification_icon.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/screen_tab.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/search_bar.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/title_with_button.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/title_content_with_rectangles.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key, required this.podcastData}) : super(key: key);
  final dynamic podcastData;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: const [Expanded(child: SearchBar()), NotificationIcon()],
          ),
          Row(
            children: [
              Column(
                children: const [ScreenTab(text: forYou, fontWeight: FontWeight.w500, textColor: whiteColor, leftPadding: 20), GreenStraightLine()],
              ),
              const ScreenTab(text: podcast, fontWeight: FontWeight.w400, textColor: screenTabTextsColor, leftPadding: 5),
              const ScreenTab(text: radio, fontWeight: FontWeight.w400, textColor: screenTabTextsColor, leftPadding: 5),
              const ScreenTab(text: audiobook, fontWeight: FontWeight.w400, textColor: screenTabTextsColor, leftPadding: 5),
            ],
          ),
          ColoredRectangle(height: 170, width: MediaQuery.of(context).size.width, rightPadding: 25, bottomPadding: 10, topPadding: 20),
          const TitleWithButton(titleText: continueListening),
          HomePageEpisodes(podcastData: podcastData),
          const TitleWithButton(titleText: topics),
          const TitleContentWithRectangles(height: 90),
          const TitleWithButton(titleText: newRelease),
          const TitleContentWithRectangles(height: 110),
        ],
      ),
    );
  }
}
