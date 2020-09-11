import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/blocs/image_search.dart';

class ImageSearchResultsTitle extends StatelessWidget {
  const ImageSearchResultsTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blueGrey[100],
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                context.watch<ImageSearch>().searchResultTitle,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
