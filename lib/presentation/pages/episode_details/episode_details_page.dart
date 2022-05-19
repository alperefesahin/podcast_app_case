import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/widgets/app_bar.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/widgets/custom_icon_button.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/widgets/episode_details_page_body.dart';

class EpisodeDetailsPage extends StatelessWidget {
  const EpisodeDetailsPage({
    Key? key,
    required this.podcastImageUrl,
    required this.podcastName,
    required this.podcastOwner,
    required this.podcastEpisodes,
  }) : super(key: key);

  final String podcastImageUrl;
  final String podcastName;
  final String podcastOwner;
  final List podcastEpisodes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBarWidget(
        appBarActions: [
          CustomIconButton(buttonPadding: const EdgeInsets.only(right: 20), icon: CupertinoIcons.ellipsis_vertical, iconSize: 25, onPressed: () {}),
        ],
      ),
      body: EpisodeDetailsPageBody(
        podcastImageUrl: podcastImageUrl,
        podcastEpisodes: podcastEpisodes,
        podcastName: podcastName,
        podcastOwnersName: podcastOwner,
      ),
    );
  }
}
