import 'package:crop_experience_agency_case/infrastructure/api/api.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

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
                  return const Center(child: CircularProgressIndicator());
                } else {
                  final _pageOptions = [
                    HomePageBody(podcastData: snapshot.data),
                    // and more pages here. Since we have just 1 screen in bottom nav bar, we can use simply just [0] notation
                  ];
                  return _pageOptions[0];
                }
              }
              return const Center(child: CircularProgressIndicator());
            }),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}
