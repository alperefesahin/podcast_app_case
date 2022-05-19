import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/widgets/custom_icon_button.dart';
import 'package:podcast_ui_application/presentation/pages/player/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/player/constants/texts.dart';
import 'package:podcast_ui_application/presentation/pages/player/widgets/app_bar.dart';
import 'package:podcast_ui_application/presentation/pages/player/widgets/player_page_body.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({
    Key? key,
    required this.podcastImageUrl,
    required this.podcastName,
    required this.podcastOwner,
  }) : super(key: key);

  final String podcastImageUrl;
  final String podcastName;
  final String podcastOwner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBarWidget(
        appBarLeadingIcon: Icons.keyboard_arrow_down_outlined,
        appBarActions: [
          CustomIconButton(buttonPadding: const EdgeInsets.only(right: 20), icon: CupertinoIcons.ellipsis_vertical, iconSize: 25, onPressed: () {}),
        ],
      ),
      body: PlayerPageBody(
        podcastImageUrl: podcastImageUrl,
        podcastName: podcastName,
        podcastOwnersName: "$podcastOwner $podcast",
      ),
    );
  }
}
