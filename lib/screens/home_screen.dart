import 'dart:ui';

import 'package:coffee/widgets/card_primary.dart';
import 'package:coffee/widgets/logo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(154, 73, 0, 1),
        title: Logo(logo: "white"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(154, 73, 0, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Coffe Shop",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Card(
                        elevation: 7.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.search),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Pesquisar..."),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CardPrimary(),
                CardPrimary(),
                CardPrimary(),
                CardPrimary(),
                CardPrimary(),
                CardPrimary(),
              ],
            ),
          ),
          Expanded(
            child: Text("oi"),
          )
        ],
      ),
    );
  }
}
