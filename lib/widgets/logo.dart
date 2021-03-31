import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key key,@required this.logo}) : super(key: key);
  final logo;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/$logo.png",
      width: 70,
    );
  }
}
