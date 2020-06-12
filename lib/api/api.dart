import 'package:http/http.dart' show Client;
import 'package:proyecto_platzi_curso_flutter/models/photos.dart';

class API {
  static const baseUrl = 'https://jsonplaceholder.typicode.com/photos'; 

  final Client _client = Client();

  Future<List<Photos>> getPhotos() async {
    List<Photos> photosList;

    final response = await _client.get(baseUrl);
    photosList = PhotosFromJson(response.body);

    return photosList;
  }
}