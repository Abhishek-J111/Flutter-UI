import 'dart:ui';
import '../Widgets/Header.dart';
import '../Widgets/TextForm.dart';
import 'package:flutter/material.dart';
import '../Widgets/Button.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.only(bottom:30),
          child: Column(
            children: [
               HeaderContainer(),
               Padding(padding: EdgeInsets.only(bottom: 15.0)),
             TextForm("FullName",Icons.person),
             TextForm("Email", Icons.email),
             TextForm("Phone Number", Icons.phone),
             TextForm("Password", Icons.vpn_key),
             ButtonTxt(),
             Padding(padding: EdgeInsets.all(15.0)),
             RichText(
               text:TextSpan(
                 children: [
                   TextSpan(text: 'Already a memeber ?',
                   style: TextStyle(color:Colors.black)
                    ),
                    TextSpan(text: 'SIGNIN',
                   style: TextStyle(color:Colors.amber) 
                    )
                 ]
               )
               
               )
            ],
          
          ),
        ),
      ),
      
    );
  }
}




