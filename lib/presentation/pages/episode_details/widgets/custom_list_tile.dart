import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/custom_icon_button.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/podcast_text.dart';
import 'package:crop_experience_agency_case/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.podcastImageUrl,
    required this.episode,
    required this.episodeName,
    required this.podcastOwnersName,
  }) : super(key: key);
  final String podcastImageUrl;
  final String episode;
  final String episodeName;
  final String podcastOwnersName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).replace(PlayerRoute(
        podcastImageUrl: podcastImageUrl,
        podcastName: episodeName,
        podcastOwner: podcastOwnersName,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, right: 15),
                child: CachedNetworkImage(
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  imageUrl: podcastImageUrl,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: imageProvider,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PodcastText(
                      textPadding: const EdgeInsets.only(),
                      textColor: whiteColor,
                      minFontSize: 18,
                      maxFontSize: 20,
                      text: episodeName,
                      fontWeight: FontWeight.w500,
                    ),
                    PodcastText(
                      textPadding: const EdgeInsets.only(),
                      textColor: constantPodcastDetailsColor,
                      minFontSize: 15,
                      maxFontSize: 17,
                      text: episode,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
              ),
            ],
          ),
          CustomIconButton(
            buttonPadding: const EdgeInsets.only(),
            icon: Icons.download,
            iconSize: 30,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
