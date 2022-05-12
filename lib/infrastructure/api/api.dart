import 'package:dio/dio.dart';

class Api {
  Future getCharacterInformations({required int id}) async {
    final response = await Dio().get('https://rickandmortyapi.com/api/character/$id');
    return response.data;
  }
}
