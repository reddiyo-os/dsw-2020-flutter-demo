import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/controllers/image_search.dart';
import 'package:dsw_2020_demo/ui/destination_card.dart';
import 'package:dsw_2020_demo/ui/breakpoints.dart';

class ImageSearchResults extends StatefulWidget {
  @override
  _ImageSearchResultsState createState() => _ImageSearchResultsState();
}

class _ImageSearchResultsState extends State<ImageSearchResults> {
  @override
  void initState() {
    super.initState();
    Provider.of<ImageSearch>(context, listen: false).searchImages('italy');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    // can also get device's orientation
    // final Orientation deviceOrientation = MediaQuery.of(context).orientation;

    Axis directionOfScroll = Axis.vertical;

    if (deviceWidth >= tabletBreakpoint) {
      directionOfScroll = Axis.horizontal;
    }
    return Expanded(
      child: Consumer<ImageSearch>(
        builder: (context, imageSearch, child) {
          return ListView.builder(
            scrollDirection: directionOfScroll,
            itemCount: imageSearch.results.length,
            itemBuilder: (BuildContext context, int index) {
              return DestinationCard(imageSearch.results[index]);
            },
          );
        },
      ),
    );
  }
}
