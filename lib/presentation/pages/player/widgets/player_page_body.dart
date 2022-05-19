import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/widgets/podcast_text.dart';
import 'package:podcast_ui_application/presentation/pages/player/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/player/widgets/audio_action_buttons.dart';
import 'package:podcast_ui_application/presentation/pages/player/widgets/audio_progress_bar.dart';
import 'package:podcast_ui_application/presentation/pages/player/widgets/player_informations.dart';

class PlayerPageBody extends StatelessWidget {
  const PlayerPageBody({
    Key? key,
    required this.podcastImageUrl,
    required this.podcastName,
    required this.podcastOwnersName,
  }) : super(key: key);

  final String podcastImageUrl;
  final String podcastName;
  final String podcastOwnersName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PodcastText(textColor: podcastOwnersNameColor, minFontSize: 17, maxFontSize: 19, text: podcastOwnersName, fontWeight: FontWeight.w500),
        PodcastText(textColor: whiteColor, minFontSize: 25, maxFontSize: 30, text: podcastName, fontWeight: FontWeight.w600),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 25),
          child: CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: podcastImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              height: 330,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: imageProvider,
                  )),
            ),
          ),
        ),
        const AudioPercentageBar(),
        const AudioActionButtons(),
        const PlayerInformations()
      ],
    );
  }
}
