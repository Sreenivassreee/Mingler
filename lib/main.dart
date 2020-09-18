import 'package:flutter/material.dart';
import 'package:mingler/Screens/HomePage.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: "Mingler",
      home: HomePage(),
    );
  }
}
