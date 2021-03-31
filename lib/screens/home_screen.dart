import 'dart:ui';

import 'package:coffee/data/coffee_data.dart';
import 'package:coffee/models/Coffee.dart';
import 'package:coffee/screens/detail_coffe_screen.dart';
import 'package:coffee/widgets/card_primary.dart';
import 'package:coffee/widgets/card_secundary.dart';
import 'package:coffee/widgets/logo_widget.dart';
import 'package:coffee/widgets/search_widget.dart';
import 'package:flutter/material.dart';

enum FilterOptions { Favorite, All }

class HomeScreen extends StatelessWidget {
  List<Coffee> coffees = DUMMY_COFFEES;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: LogoWidget(logo: "white"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SearchWidget(),
          Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Popular",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Popular",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Popular",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                Expanded(
                  child: Container(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: coffees.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CardPrimary(coffees[index]);
                      },
                    ),
                  ),
                ),
                Column(
                  children: [
                    CardSecunday(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
