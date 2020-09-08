import 'package:dsw_2020_demo/ui/breakpoints.dart';
import 'package:dsw_2020_demo/ui/navigation/navigation_drawer.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final String data;
  const FavoritesPage({this.data, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //can use layout builder to get dimensions
    return LayoutBuilder(builder: (context, dimensions) {
      if (dimensions.maxWidth >= tabletBreakpoint) {
        return Row(
          children: [Text('TABLET VIEW')],
        );
      }
      return Scaffold(
        appBar: AppBar(title: Text('Vacation Dream Book')),
        drawer: NavigationDrawer(),
        body: SafeArea(
          child: Text(
            'FAVORITES PAGE',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      );
    });
  }
}
