import 'package:coffee/screens/first_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(154, 73, 0, 1),
      ),
      home: FirstScreen(),
    );
  }
}
