import 'package:auto_route/auto_route.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/episode_details_page.dart';
import 'package:podcast_ui_application/presentation/pages/home/home_page.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/introduction_page.dart';
import 'package:podcast_ui_application/presentation/pages/login/login_page.dart';
import 'package:podcast_ui_application/presentation/pages/player/player_page.dart';

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
