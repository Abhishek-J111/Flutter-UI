import 'package:flutter/material.dart';
class ButtonTxt extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (){}, 
        child: Text('SIGNUP'),
         style: ElevatedButton.styleFrom(
           primary: Colors.amber,
           shadowColor: Colors.grey.shade500,
           textStyle: TextStyle(
             fontSize: 15.0,
           ),
           elevation: 5.0,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15.0)
           )
         ),         
            ),
    );
  }
}