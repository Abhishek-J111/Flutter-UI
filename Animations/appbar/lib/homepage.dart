import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Widgets/Pages/earth.dart';
import 'Widgets/Pages/jupiter.dart';
import 'Widgets/Pages/mars.dart';
import 'Widgets/Pages/moon.dart';
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
    _listPages..add(Mars())..add(Earth())..add(Moon())..add(Jupiter());
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
      
        selectedFontSize: 20.0,
        unselectedFontSize: 10.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1_outlined),
            label: 'Mars',
            backgroundColor: Colors.blue.shade400
            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.filter_2_outlined),
            label: 'Earth'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.filter_3_outlined),
            label: 'Moon'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.filter_4_outlined),
            label: 'Jupiter'
            ),
            
        ],
        onTap: (selectedIndex)=>changePage(selectedIndex),
      ),
      
    );
  }
}