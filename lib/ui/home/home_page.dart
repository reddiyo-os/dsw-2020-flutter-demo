import 'package:dsw_2020_demo/models/image_search.dart';
import 'package:dsw_2020_demo/ui/breakpoints.dart';
import 'package:dsw_2020_demo/ui/home/image_search_form.dart';
import 'package:dsw_2020_demo/ui/home/image_search_results.dart';
import 'package:dsw_2020_demo/ui/navigation/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ImageSearch>().searchImages('vacation destination');
  }

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
          child: Column(
            children: [
              ImageSearchForm(),
              Text(context.watch<ImageSearch>().searchResultTitle),
              ImageSearchResults(),
            ],
          ),
        ),
      );
    });
  }
}
