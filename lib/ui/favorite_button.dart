import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
