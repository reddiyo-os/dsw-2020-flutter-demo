import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/blocs/image_search.dart';
import 'package:dsw_2020_demo/ui/destination_card.dart';
import 'package:dsw_2020_demo/ui/breakpoints.dart';

class ImageSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Axis directionOfScroll = Axis.vertical;
    if (MediaQuery.of(context).size.width >= tabletBreakpoint) {
      directionOfScroll = Axis.horizontal;
    }
    return Expanded(
      child: ListView.builder(
        scrollDirection: directionOfScroll,
        itemCount: context.watch<ImageSearch>().results.length,
        itemBuilder: (BuildContext context, int index) {
          return DestinationCard(context.watch<ImageSearch>().results[index]);
        },
      ),
    );
  }
}
