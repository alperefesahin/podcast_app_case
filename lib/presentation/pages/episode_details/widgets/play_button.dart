import 'package:auto_route/auto_route.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/podcast_text.dart';
import 'package:crop_experience_agency_case/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
    required this.podcastName,
    required this.podcastImageUrl,
    required this.podcastOwnersName,
  }) : super(key: key);

  final String podcastName;
  final String podcastImageUrl;
  final String podcastOwnersName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).replace(PlayerRoute(
          podcastImageUrl: podcastImageUrl,
          podcastName: podcastName,
          podcastOwner: podcastOwnersName,
        ));
      },
      child: Container(
        width: 230,
        height: 80,
        decoration: const BoxDecoration(color: buttonColor, borderRadius: BorderRadius.all(Radius.circular(15))),
        child: const Center(
          child: PodcastText(textPadding: EdgeInsets.only(), fontWeight: FontWeight.w600, maxFontSize: 21, minFontSize: 17, text: play, textColor: whiteColor),
        ),
      ),
    );
  }
}
