// Member 1: Tan Sin Yi (A22EC0281)
// Member 2: Goh Zi Qin (A22EC0163)
import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAP Exercise 2',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MainScreen(),
    );
  }
}
