import 'package:cached_network_image/cached_network_image.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/home_page_episode_title.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/linear_percentage_bar.dart';
import 'package:flutter/material.dart';

class HomePageEpisodes extends StatelessWidget {
  const HomePageEpisodes({Key? key, required this.podcastData}) : super(key: key);
  final dynamic podcastData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 175,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          final String podcastImageUrl = podcastData[index]["image"];
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                Card(
                    color: transparentColor,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CachedNetworkImage(
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      imageUrl: podcastImageUrl,
                      imageBuilder: (context, imageProvider) => Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: imageProvider,
                            )),
                      ),
                    )),
                const LinearPercentageBar(),
                HomePageEpisodeTitle(index: index, podcastData: podcastData)
              ],
            ),
          );
        },
      ),
    );
  }
}
