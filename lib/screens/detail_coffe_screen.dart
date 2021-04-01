import 'dart:ui';

import 'package:coffee/models/Coffee.dart';
import 'package:coffee/widgets/background_bottom_widget.dart';
import 'package:coffee/widgets/background_top_widget.dart';
import 'package:coffee/widgets/icon_favorite.dart';
import 'package:flutter/material.dart';

class DetailCoffeeScreen extends StatelessWidget {
  DetailCoffeeScreen(this.coffee);
  Coffee coffee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                BackgroundTopWidget(),
                Align(
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag: coffee.id,
                    child: ClipRect(
                      child: Image.asset(
                        coffee.imageUrl,
                        width: 280,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Card(
                      elevation: 8,
                      child: Container(
                        child: IconFavorite(),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 7,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "-",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "2",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "+",
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
                Text(
                  coffee.name,
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                Text(
                  coffee.description,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: BackgroundBottomWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
