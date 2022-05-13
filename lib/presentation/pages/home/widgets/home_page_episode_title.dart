import 'package:auto_size_text/auto_size_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePageEpisodeTitle extends StatelessWidget {
  const HomePageEpisodeTitle({Key? key, required this.index, required this.podcastName}) : super(key: key);
  final int index;
  final String podcastName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: 120,
      child: AutoSizeText(
        podcastName,
        minFontSize: 14,
        maxFontSize: 17,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: whiteColor),
      ),
    );
  }
}
