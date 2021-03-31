import 'package:coffee/models/Coffee.dart';
import 'package:coffee/widgets/background_top_widget.dart';
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
      body: Column(
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
