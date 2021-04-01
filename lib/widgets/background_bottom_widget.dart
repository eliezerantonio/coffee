import 'package:flutter/material.dart';

class BackgroundBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Color.fromRGBO(154, 73, 0, 1),
          borderRadius:
              BorderRadiusDirectional.only(topStart: Radius.circular(40))),
    );
  }
}
