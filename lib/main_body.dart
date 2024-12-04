import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final double iconSize;
  final Color iconColor;

  const MainBody({Key? key, required this.iconSize, required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Icon(
      Icons.access_alarms_rounded,
      size: iconSize,
      color: iconColor,
    ));
  }
}
