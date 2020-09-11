import 'package:flutter/material.dart';
import 'package:dsw_2020_demo/models/unsplash_image.dart';

class DestinationCard extends StatefulWidget {
  final UnsplashImage image;
  DestinationCard(this.image);

  @override
  _DestinationCardState createState() => _DestinationCardState();
}

class _DestinationCardState extends State<DestinationCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    //PROTIP: use the cached_network_image package for caching, placeholder images, and fading images in as they are loaded.
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey[100], width: 6),
      ),
      child: Stack(children: [
        Image.network(widget.image.imageUrl),
        Container(
          color: Colors.black.withAlpha(80),
          height: 45,
          width: 45,
          child: IconButton(
            icon: Icon(Icons.star, color: isFavorited ? Colors.pink[400] : Colors.white),
            onPressed: () {
              setState(() {
                isFavorited = !isFavorited;
              });
            },
          ),
        )
      ]),
    );
  }
}
