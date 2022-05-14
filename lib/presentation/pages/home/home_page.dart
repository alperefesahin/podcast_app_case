import 'package:crop_experience_agency_case/infrastructure/api/api.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getRequest = Api().getPodcastInformations();

    return Scaffold(
        backgroundColor: pageBackgroundColor,
        body: FutureBuilder(
            future: getRequest,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (!snapshot.hasData) {
                  return Center(child: JumpingDotsProgressIndicator(fontSize: 40, color: percentageIndicatorForegroundColor));
                } else {
                  final podcastData = snapshot.data;

                  final _pageOptions = [
                    HomePageBody(podcastData: podcastData),
                    // and more pages here. Since we use just 1 screen in bottom nav bar,
                    // we can use simply just [0] notation
                  ];
                  return _pageOptions[0];
                }
              }
              return Center(child: JumpingDotsProgressIndicator(fontSize: 40, color: percentageIndicatorForegroundColor));
            }),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}
