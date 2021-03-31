import 'dart:ui';

import 'package:coffee/widgets/card_primary.dart';
import 'package:coffee/widgets/card_secundary.dart';
import 'package:coffee/widgets/logo_widget.dart';
import 'package:coffee/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(154, 73, 0, 1),
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
                CardPrimary(),
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
