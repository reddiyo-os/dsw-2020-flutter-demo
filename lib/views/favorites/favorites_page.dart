import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final String data;
  const FavoritesPage({this.data, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('My Favorites Page'));
  }
}
