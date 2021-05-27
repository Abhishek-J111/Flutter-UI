
import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget  {
  List fact;
  AnimatedAppBar(this.fact);
  @override
  _AnimatedAppBarState createState() => _AnimatedAppBarState(fact);
}

class _AnimatedAppBarState extends State<AnimatedAppBar> with SingleTickerProviderStateMixin {
  List fact ;
  _AnimatedAppBarState(this.fact);

  late AnimationController _animationController ;
  late Animation <double> _rotateAnimation;
 
  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 90)
    );
    _rotateAnimation = CurvedAnimation(
      parent: _animationController, 
      curve: Curves.linear
      );
      _animationController.repeat();
  }
  
  @override
  void dispose(){
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child:Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.black,
                child: FittedBox(
                  
                  fit: BoxFit.fill,
                  child: ClipRect(
                  
                    child: Align(
                      alignment: Alignment.topCenter,
                      heightFactor: 0.25,
                      child: RotationTransition(
                        turns: _rotateAnimation,
                        child: Image(
                          image: AssetImage(fact[6]),
                        ),
                        ),
                    ),
                  ),
                ),
              ),
              Padding(
  
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    fact[0].toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0,
                      letterSpacing: 5
                    ),
                  ),
                ),
              )
            ],
          ),
          Facts(fact[1]),
          Facts((fact[2])),
           Facts((fact[3])),
            Facts((fact[4])),
             Facts((fact[5])),
        ],
        
      ),
    
    );
  }
}

class Facts extends StatelessWidget {
String text;
Facts(this.text);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                
              ),
              elevation: 5.0,
              color: Colors.blueGrey.shade400,
              child: ListTile(
                title: Text(text,
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}