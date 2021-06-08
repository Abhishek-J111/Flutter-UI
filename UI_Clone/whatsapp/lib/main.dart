import 'package:flutter/material.dart';
import 'Screen/home.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25d366),

        tabBarTheme: TabBarTheme(
          labelColor: Colors.white
        ),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white,fontSize: 16.0),
          bodyText2: TextStyle(color:Colors.black),
          button:TextStyle(color:Colors.white,fontSize: 12.0)
        ),
        bottomAppBarColor: Colors.white,
      ),
      home: Home(),
      
    );
  }
}