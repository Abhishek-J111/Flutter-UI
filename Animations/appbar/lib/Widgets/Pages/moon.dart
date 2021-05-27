import 'package:flutter/material.dart';
import '../animatedAppBar.dart';

class Moon extends StatefulWidget {
  @override
  _MoonState createState() => _MoonState();
}

class _MoonState extends State<Moon> {
   List moonFact = [
    "Moon",
    "The Moon is Earth's only permanent natural satellite.",
    "The Moon always shows Earth the same face.",
    "The Moon’s surface is actually dark.",
    "The Moon was made when a rock smashed into Earth.",
    "There is water on the Moon.",
    "assets/moon.png"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAppBar(moonFact),
      
    );
  }
}