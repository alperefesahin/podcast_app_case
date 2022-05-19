import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:podcast_ui_application/presentation/pages/player/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/player/constants/texts.dart';

class AudioPercentageBar extends StatelessWidget {
  const AudioPercentageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        LinearPercentIndicator(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          width: MediaQuery.of(context).size.width,
          lineHeight: 30,
          percent: 0.6,
          backgroundColor: audioProgressBarBackgroundColor,
          progressColor: audioProgressBarForegroundColor,
          barRadius: const Radius.circular(25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(padding: EdgeInsets.only(left: 35), child: AutoSizeText(elapsedTime, minFontSize: 10, maxFontSize: 13, style: TextStyle(color: whiteColor))),
            Stack(
              alignment: AlignmentDirectional.center,
              children: const [
                Padding(padding: EdgeInsets.only(left: 60), child: CircleAvatar(backgroundColor: whiteColor, radius: 15)),
                Padding(padding: EdgeInsets.only(left: 60), child: CircleAvatar(backgroundColor: audioProgressBarForegroundColor, radius: 7)),
              ],
            ),
            const Padding(padding: EdgeInsets.only(right: 35), child: AutoSizeText(remainingTime, minFontSize: 10, maxFontSize: 13, style: TextStyle(color: whiteColor)))
          ],
        )
      ],
    );
  }
}
