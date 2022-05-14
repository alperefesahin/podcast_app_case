import 'package:crop_experience_agency_case/presentation/pages/player/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/player/widgets/audio_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioActionButtons extends StatelessWidget {
  const AudioActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AudioIconButton(iconData: CupertinoIcons.arrow_counterclockwise, iconSize: 30, iconColor: whiteColor,),
          InkWell(
            onTap: () {},
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: const [
                CircleAvatar(backgroundColor: audioProgressBarForegroundColor, radius: 40),
                Icon(Icons.play_arrow, size: 40,color: whiteColor,),
              ],
            ),
          ),
          const AudioIconButton(iconData: CupertinoIcons.arrow_clockwise,iconSize: 30, iconColor: whiteColor)
        ],
      ),
    );
  }
}
