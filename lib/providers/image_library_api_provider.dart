import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dsw_2020_demo/config.dart';
import 'package:dsw_2020_demo/models/unsplash_image_model.dart';

class ImageLibraryApiProvider {
  static Future<List<UnsplashImage>> searchImages(String query) async {
    print('SEARCHING IMAGES FOR: $query');
    var url = Uri.parse('https://api.unsplash.com/search/photos/?client_id=$unsplashClientId&query=$query');
    final response = await http.get(url);
    final jsonResponse = json.decode(response.body);
    return UnsplashImage.imageListFromJson(jsonResponse['results']);
  }
}
