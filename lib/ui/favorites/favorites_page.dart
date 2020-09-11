import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final String data;
  const FavoritesPage({this.data, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: SafeArea(
        child: Center(
          child: Text(
            'FAVORITES PAGE',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
