import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final double iconSize;

  const MainBody({Key? key, required this.iconSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Icon(
      Icons.access_alarms_rounded,
      size: iconSize,
    ));
  }
}
