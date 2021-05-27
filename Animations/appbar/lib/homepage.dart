import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Widgets/Pages/earth.dart';
import 'Widgets/Pages/mars.dart';
import 'Widgets/animatedAppBar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex =0;
  List _listPages = [];
  Widget _currentPage = Mars();
  
  @override
  void initState(){
    super.initState();
    _listPages..add(Mars())..add(Earth());
    _currentPage = Mars();
  }

  void changePage(int selectedIndex){
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[_currentIndex];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _currentPage,
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1_outlined),
            label: 'Mars'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.filter_2_outlined),
            label: 'Earth'
            ),
            
        ],
        onTap: (selectedIndex)=>changePage(selectedIndex),
      ),
      
    );
  }
}