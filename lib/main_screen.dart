import 'package:flutter/material.dart';

import 'main_appbar.dart';
import 'main_body.dart';
import 'main_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double _iconSize = 100; //Initial icon size
  bool allowResize = true;

//Function for minimize button
  void _decreaseSize() {
    setState(() {
      _iconSize -= 50.0;
    });
  }

//Function for S button
  void _smallSize() {
    setState(() {
      _iconSize = 100.0;
    });
  }

//Function for M button
  void _mediumSize() {
    setState(() {
      _iconSize = 300.0;
    });
  }

  //Function for L button
  void _largeSize() {
    setState(() {
      _iconSize = 500.0;
    });
  }

  //Function for enlarge button
  void _increaseSize() {
    setState(() {
      _iconSize += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar( 
         /*onDecrease: _decreaseSize,
         onIncrease: _increaseSize,
          smallSize: _smallSize,
          mediumSize: _mediumSize,
          largeSize: _largeSize,*/
          allowResize: allowResize,
        ),
        body: MainBody(),
        bottomNavigationBar: MainBottomBar(),
      ),
    );
  }
}
