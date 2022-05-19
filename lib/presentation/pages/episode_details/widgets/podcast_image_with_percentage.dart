import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/widgets/custom_icon_button.dart';
import 'package:podcast_ui_application/presentation/pages/home/widgets/linear_percentage_bar.dart';

class PodcastImageWithPercentageAndDownladingButton extends StatelessWidget {
  const PodcastImageWithPercentageAndDownladingButton({Key? key, required this.podcastImageUrl}) : super(key: key);
  final String podcastImageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: CachedNetworkImage(
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  imageUrl: podcastImageUrl,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: imageProvider,
                        )),
                  ),
                )),
            const LinearPercentageBar(linearPercentIndicatiorWith: 210, leftPadding: 25),
          ],
        ),
        const CustomIconButton(buttonPadding: EdgeInsets.only(top: 25, right: 25), icon: Icons.download, iconSize: 30)
      ],
    );
  }
}
