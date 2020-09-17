import 'package:flutter/material.dart';
import 'package:dsw_2020_demo/models/unsplash_image.dart';
import 'package:dsw_2020_demo/resources/image_library_api.dart';

class ImageSearch extends ChangeNotifier {
  String _resultTitle = 'SUGGESTED DESTINATIONS';
  String get searchResultTitle => _resultTitle;
  set resultTitle(String searchQuery) {
    _resultTitle = 'RESULTS FOR: ${searchQuery.toUpperCase()}';
    notifyListeners();
  }

  List<UnsplashImage> _results = [];
  List<UnsplashImage> get results => _results;

  void searchImages(String query) async {
    _results = await ImageLibraryApiResource.searchImages(query);
    notifyListeners();
  }
}
