import 'package:flutter/material.dart';
class HeaderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
        height: MediaQuery.of(context).size.height*0.3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber,Colors.amberAccent]
          ),
      borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(30.0)
    )
        ),
        child: Stack(
    children: [
      Center(
        child: Image(
           height: 100.0,
          image: AssetImage("assets/TravelPerfect.png") 
          ),
          
      ),
      Positioned(
        bottom: 20.0,
        right: 20.0,
        child: Text('Signup for Free',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0
        ),
        ))
    ],),
      );
  }
}