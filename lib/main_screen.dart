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
  double _redSliderValue = 0.0;
  double _greenSliderValue = 0.0;
  double _blueSliderValue = 0.0;
  bool allowResize = true;
  bool allowChangeColor = true;

//Function for minimize button
  void _decreaseSize() {
    if (_iconSize >= 50) {
      setState(() {
        _iconSize -= 50.0;
      });
    }
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
    if (_iconSize <= 500) {
      setState(() {
        _iconSize += 50.0;
      });
    }
  }

  //Function to change each color components
  void _onRedSliderChanged(double value) {
    setState(() {
      _redSliderValue = value;
    });
  }

  void _onGreenSliderChanged(double value) {
    setState(() {
      _greenSliderValue = value;
    });
  }

  void _onBlueSliderChanged(double value) {
    setState(() {
      _blueSliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(
          onDecrease: _decreaseSize,
          onIncrease: _increaseSize,
          smallSize: _smallSize,
          mediumSize: _mediumSize,
          largeSize: _largeSize,
          allowResize: allowResize,
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Allow resize
            Card(
              margin: const EdgeInsets.all(8),
              elevation: 2, //Shadow dept
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              child: CheckboxListTile(
                title: const Text(
                  'Allow resize?',
                  style: TextStyle(fontSize: 15),
                ),
                value: allowResize,
                onChanged: (bool? value) {
                  setState(() {
                    allowResize = value!;
                  });
                },
                activeColor: Colors.brown,
              ),
            ),
            // Allow change primer color
            Card(
              margin: const EdgeInsets.all(8),
              elevation: 2, //Shadow dept
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              child: CheckboxListTile(
                title: const Text(
                  'Allow change primer color?',
                  style: TextStyle(fontSize: 15),
                ),
                value: allowChangeColor,
                onChanged: (bool? value) {
                  setState(() {
                    allowChangeColor = value!;
                  });
                },
                activeColor: Colors.brown,
              ),
            ),
          ],
        )),
        body: MainBody(
          iconSize: _iconSize,
          iconColor: Color.fromRGBO(_redSliderValue.toInt(),
              _greenSliderValue.toInt(), _blueSliderValue.toInt(), 1.0),
        ),
        bottomNavigationBar: MainBottomBar(
          redSliderValue: _redSliderValue,
          greenSliderValue: _greenSliderValue,
          blueSliderValue: _blueSliderValue,
          onRedSliderChanged: _onRedSliderChanged,
          onGreenSliderChanged: _onGreenSliderChanged,
          onBlueSliderChanged: _onBlueSliderChanged,
          allowChangeColor: allowChangeColor,
        ),
      ),
    );
  }
}
