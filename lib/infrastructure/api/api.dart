import 'package:dio/dio.dart';

class Api {
  Future getPodcastInformations() async {
    final response = await Dio().get('https://rickandmortyapi.com/api/character/');
    return response.data["results"];
  }

  Future getPodcastEpisodesInformations({required String episodeUrl}) async {
    final response = await Dio().get(episodeUrl);
    return response.data;
  }
}
