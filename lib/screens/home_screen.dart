import 'dart:math';
import 'dart:ui';

import 'package:coffee/models/custom_path.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(154, 73, 0, 1),
        title: Text("Logo"),
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
          Stack(
            children: [
              Card(
                margin: EdgeInsets.all(22),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 9,
                    ),
                    Icon(Icons.favorite, color: Color.fromRGBO(154, 73, 0, 1)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "\$13",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Cappuccione",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25, top: 7),
                      child: Text(
                        "this is on empresao with a thil layer of faamy stemed milk",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "images/principal.png",
                    width: 150,
                  ),
                ),
              ),
              Container(
                height: 230,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    child: Icon(
                      Icons.add_box_rounded,
                      size: 60,
                      color: Color.fromRGBO(
                        154,
                        73,
                        0,
                        1,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
