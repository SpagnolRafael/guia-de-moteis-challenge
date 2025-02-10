import 'dart:convert';

import 'package:guia_de_moteis_go_challenge/dto/home_data_dto.dart';
import 'package:http/io_client.dart';

class HomeRepository {
  final IOClient _client;
  HomeRepository(this._client);

  Future<HomeDataDto> getHomeData() async {
    try {
      final url = Uri.parse('https://jsonkeeper.com/b/1IXK');
      final response = await _client.get(url);
      final decodedData = utf8.decode(response.bodyBytes);
      final data = jsonDecode(decodedData);
      return HomeDataDto.fromJson(data["data"]);
    } catch (error) {
      // ignore: avoid_print
      print(error);
      rethrow;
    }
  }
}
