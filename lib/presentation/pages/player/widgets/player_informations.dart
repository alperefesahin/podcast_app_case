import 'package:auto_size_text/auto_size_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/player/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/player/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/player/widgets/audio_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerInformations extends StatelessWidget {
  const PlayerInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(CupertinoIcons.headphones, color: podcastOwnersNameColor, size: 20),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: AutoSizeText(ryusAirpods, minFontSize: 15, maxFontSize: 17, style: TextStyle(color: podcastOwnersNameColor)),
              ),
              AudioIconButton(iconData: Icons.keyboard_arrow_down, iconSize: 15, iconColor: podcastOwnersNameColor),
            ],
          ),
          const AudioIconButton(iconData: Icons.computer, iconSize: 30, iconColor: whiteColor)
        ],
      ),
    );
  }
}
