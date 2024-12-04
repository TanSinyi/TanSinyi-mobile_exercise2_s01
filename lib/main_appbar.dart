import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  final Function onDecrease;
  final Function onIncrease;
  final Function smallSize;
  final Function mediumSize;
  final Function largeSize;
  final bool allowResize;

  MainAppBar({
    required this.onDecrease,
    required this.onIncrease,
    required this.smallSize,
    required this.mediumSize,
    required this.largeSize,
    required this.allowResize,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.brown,
      leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }),
      title: const Text('My Icon',
          style: TextStyle(fontSize: 25.0, color: Colors.white)),
      actions: [
        if (allowResize) ...[
          //minimize button
          IconButton(
              onPressed: () => onDecrease(),
              icon: const Icon(
                Icons.remove_circle_outline,
                color: Colors.white,
              )),
          //'S'button
          TextButton(
              onPressed: () => smallSize(),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      )),
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    'S',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ))),
          //'M' Button
          TextButton(
              onPressed: () => mediumSize(),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      )),
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    'M',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ))),
          //'L'Button
          TextButton(
              onPressed: () => largeSize(),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      )),
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    'L',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ))),
          //plus button
          IconButton(
              onPressed: () => onIncrease(),
              icon: const Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              )),
        ]
      ],
    );
  }
}
