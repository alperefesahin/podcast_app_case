import 'package:crop_experience_agency_case/presentation/pages/episode_details/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/custom_icon_button.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/play_button.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/podcast_episodes.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/podcast_image_with_percentage.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/podcast_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EpisodeDetailsPageBody extends StatelessWidget {
  const EpisodeDetailsPageBody({
    Key? key,
    required this.podcastImageUrl,
    required this.podcastName,
    required this.podcastOwnersName,
    required this.podcastEpisodes,
  }) : super(key: key);

  final String podcastImageUrl;
  final String podcastName;
  final String podcastOwnersName;
  final List podcastEpisodes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PodcastImageWithPercentageAndDownladingButton(podcastImageUrl: podcastImageUrl),
          PodcastText(
            textColor: whiteColor,
            minFontSize: 25,
            maxFontSize: 30,
            text: podcastName,
            fontWeight: FontWeight.w500,
          ),
          PodcastText(
            textColor: podcastOwnersNameColor,
            minFontSize: 16,
            maxFontSize: 18,
            text: "$podcastOwnersName$sDotEpisode",
            fontWeight: FontWeight.w500,
          ),
          const PodcastText(
            textColor: constantPodcastDetailsColor,
            minFontSize: 15,
            maxFontSize: 17,
            text: constantPodcastDetails,
            fontWeight: FontWeight.w400,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15, bottom: 15),
            child: Row(
              children: [
                const PlayButton(),
                CustomIconButton(buttonPadding: const EdgeInsets.only(left: 20), icon: CupertinoIcons.share, iconSize: 25, onPressed: () {}),
                CustomIconButton(buttonPadding: const EdgeInsets.only(left: 15), icon: CupertinoIcons.heart, iconSize: 25, onPressed: () {})
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const PodcastText(
                textColor: whiteColor,
                minFontSize: 16,
                maxFontSize: 18,
                text: seeAllEpisode,
                fontWeight: FontWeight.w500,
              ),
              CustomIconButton(buttonPadding: const EdgeInsets.only(top: 10), icon: Icons.keyboard_arrow_down, iconSize: 30, onPressed: () {})
            ],
          ),
          PodcastEpisodes(
            podcastImageUrl: podcastImageUrl,
            podcastName: podcastName,
            podcastOwnersName: podcastOwnersName,
            podcastEpisodes: podcastEpisodes,
          )
        ],
      ),
    );
  }
}
