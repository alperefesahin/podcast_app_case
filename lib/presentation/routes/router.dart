import 'package:auto_route/auto_route.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/episode_details_page.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/home_page.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/introduction_page.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/login_page.dart';
import 'package:crop_experience_agency_case/presentation/pages/player/player_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: IntroductionPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: EpisodeDetailsPage),
    AutoRoute(page: PlayerPage),
  ],
)
class $AppRouter {}
