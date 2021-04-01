import 'package:flutter/material.dart';

class BackgroundBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius:
              BorderRadiusDirectional.only(topStart: Radius.circular(40))),
    );
  }
}
