import 'package:flutter/material.dart';
import '../animatedAppBar.dart';

class Earth extends StatefulWidget {
  @override
  _EarthState createState() => _EarthState();
}

class _EarthState extends State<Earth> {
   List earthFact = [
    "Earth",
    "The Earth’s rotation is gradually slowing.",
    "The Earth was once believed to be the centre of the universe.",
    "Earth has a powerful magnetic field.",
    "There is only one natural satellite of the planet Earth.",
    "Earth is only named after God",
    "assets/jupiter.png"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAppBar(earthFact),
      
    );
  }
}