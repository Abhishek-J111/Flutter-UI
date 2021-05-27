import 'package:flutter/material.dart';
import '../animatedAppBar.dart';

class Jupiter extends StatefulWidget {
  @override
  _JupiterState createState() => _JupiterState();
}

class _JupiterState extends State<Jupiter> {
   List jupiterFact = [
    "Jupiter",
    "Jupiter Is Massive.",
    "Jupiter Cannot Become A Star.",
    "Jupiter Is The Fastest Spinning Planet.",
    "Jupiter Has Rings.",
    "Jupiter Has 67 Moons.",
    "assets/jupiter.png"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAppBar(jupiterFact),
      
    );
  }
}