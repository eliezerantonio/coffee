import 'package:flutter/material.dart';

class IconFavorite extends StatelessWidget {
  IconFavorite({Key key, this.opacity = 1}) : super(key: key);
  double opacity;
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.favorite,
        size: 30,
        color: Color.fromRGBO(
          154,
          73,
          0,
          opacity,
        ));
  }
}
