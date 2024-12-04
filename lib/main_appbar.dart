import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  /*final Function onDecrease;
  final Function onIncrease;
  final Function smallSize;
  final Function mediumSize;
  final Function largeSize;*/
  final bool allowResize;

  MainAppBar({
   /* required this.onDecrease,
    required this.onIncrease,
    required this.smallSize,
    required this.mediumSize,
    required this.largeSize,*/
    required this.allowResize,
  })

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.brown,
      title: const Text('My Icon',
          style: TextStyle(fontSize: 25.0, color: Colors.white)),
      actions: [
          if(allowResize) ...[
            IconButton(
              onPressed:() {}, 
              icon: const Icon(Icons.remove_circle_outline,
              color: Colors.white,))
          ]
      ],
    );
  }
}
