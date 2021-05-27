import 'package:flutter/material.dart';
import '../animatedAppBar.dart';

class Mars extends StatefulWidget {
   
  @override
  _MarsState createState() => _MarsState();
}

class _MarsState extends State<Mars> {
  List marsFact = [
    "Mars",
    "Mars and Earth have approximately the same landmass.",
    "Mars is home to the tallest mountain in the solar system.",
    "Only 18 missions to Mars have been successful.",
    "Mars has the largest dust storms in the solar system.",
    "On Mars the Sun appears about half the size as it does on Earth.",
    "assets/mars.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAppBar(marsFact),
      
    );
  }
}