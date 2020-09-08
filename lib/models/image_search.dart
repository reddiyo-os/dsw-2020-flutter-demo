import 'package:flutter/material.dart';
import 'package:dsw_2020_demo/models/unsplash_image_model.dart';
import 'package:dsw_2020_demo/providers/image_library_api_provider.dart';

class ImageSearch extends ChangeNotifier {
  String _resultTitle = 'SUGGESTED';
  String get searchResultTitle => _resultTitle;
  set resultTitle(String searchQuery) {
    _resultTitle = 'RESULTS FOR: ${searchQuery.toUpperCase()}';
    notifyListeners();
  }

  List<UnsplashImage> _results = [];
  List<UnsplashImage> get results => _results;

  void searchImages(String query) async {
    _results = await ImageLibraryApiProvider.searchImages(query);
    notifyListeners();
  }
}
