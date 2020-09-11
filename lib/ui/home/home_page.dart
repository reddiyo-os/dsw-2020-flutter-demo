import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/blocs/image_search.dart';
import 'package:dsw_2020_demo/ui/home/image_search_form.dart';
import 'package:dsw_2020_demo/ui/home/image_search_results.dart';
import 'package:dsw_2020_demo/ui/navigation/navigation_drawer.dart';
import 'package:dsw_2020_demo/ui/home/image_search_title.dart';
import 'package:dsw_2020_demo/ui/breakpoints.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ImageSearch>().searchImages('italy');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vacation Dream Book')),
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          ImageSearchForm(),
          ImageSearchResultsTitle(),
          ImageSearchResults(),
          if (MediaQuery.of(context).size.width >= tabletBreakpoint) const SizedBox(height: 25),
        ],
      ),
    );
  }
}
