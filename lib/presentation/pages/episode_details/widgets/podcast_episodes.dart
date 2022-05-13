import 'package:crop_experience_agency_case/infrastructure/api/api.dart';
import 'package:crop_experience_agency_case/presentation/pages/episode_details/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class PodcastEpisodes extends StatelessWidget {
  final String podcastImageUrl;
  final String podcastName;
  final String podcastOwnersName;
  final List podcastEpisodes;

  const PodcastEpisodes({
    Key? key,
    required this.podcastImageUrl,
    required this.podcastName,
    required this.podcastOwnersName,
    required this.podcastEpisodes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final getRequest = Api().getPodcastEpisodesInformations(episodeUrl: podcastEpisodes[index]);
        return FutureBuilder(
            future: getRequest,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  final String episodeName = snapshot.data["name"];
                  final String episode = snapshot.data["episode"];

                  return CustomListTile(
                    podcastImageUrl: podcastImageUrl,
                    episode: episode,
                    episodeName: episodeName,
                  );
                }
              }
              return const Center(child: CircularProgressIndicator());
            });
      },
    );
  }
}
