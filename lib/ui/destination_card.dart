import 'package:flutter/material.dart';
import 'package:dsw_2020_demo/models/unsplash_image_model.dart';

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
      child: Stack(children: [
        Image.network(widget.image.imageUrl),
        IconButton(
          color: isFavorited ? Colors.pink[700] : Colors.grey[600],
          icon: Icon(Icons.star),
          onPressed: () {
            setState(() {
              isFavorited = !isFavorited;
            });
          },
        )
      ]),
      margin: const EdgeInsets.all(25),
    );
  }
}
