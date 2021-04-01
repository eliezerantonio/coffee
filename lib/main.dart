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
      theme: ThemeData.dark(),
      home: FirstScreen(),
    );
  }
}
