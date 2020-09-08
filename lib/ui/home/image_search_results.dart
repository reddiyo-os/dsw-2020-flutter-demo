import 'package:dsw_2020_demo/models/unsplash_image_model.dart';
import 'package:flutter/material.dart';
import 'package:dsw_2020_demo/ui/destination_card.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/models/image_search.dart';

class ImageSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: context.watch<ImageSearch>().results.length,
        itemBuilder: (BuildContext context, int index) {
          return DestinationCard(context.watch<ImageSearch>().results[index]);
        },
      ),
    );
  }
}
