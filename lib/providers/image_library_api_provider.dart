import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dsw_2020_demo/config.dart';
import 'package:dsw_2020_demo/models/unsplash_image_model.dart';

class ImageLibraryApiProvider {
  Future<List<UnsplashImage>> searchUnsplash(String keyword) async {
    var url = Uri.parse('https://api.unsplash.com/search/photos/?client_id=$unsplashClientId');
    final response = await http.get(url);
    //TODO convert to List of UnsplashImage
    return json.decode(response.body);
  }
}
