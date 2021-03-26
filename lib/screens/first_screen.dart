import 'dart:ui';

import 'package:coffee/models/custom_path.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

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
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.74,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(154, 73, 0, 1),
                    // borderRadius: BorderRadius.only(
                    //   bottomLeft: Radius.circular(50),
                    // ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'images/principal.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Text(
                            "Coffe Shop",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            "Coffe Shop",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(154, 73, 0, 1),
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Proximo".toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
