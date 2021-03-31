import 'package:flutter/material.dart';

class BackgroundTopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromRGBO(154, 73, 0, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
