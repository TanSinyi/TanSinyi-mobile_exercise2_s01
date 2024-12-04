import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  final Function onDecrease; // Function for the minus button
  final Function onIncrease; // Function for the plus button
  final Function smallSize; // Function for the S button
  final Function mediumSize; // Function for the M button
  final Function largeSize; // Function for the L button
  final bool allowResize; // Declare allowResize variable
  
  MainAppBar(
      {required this.onDecrease,
      required this.smallSize,
      required this.mediumSize,
      required this.largeSize,
      required this.onIncrease,
      required this.allowResize});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.brown,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.white,
        onPressed: () {
          // Open the drawer when the menu icon is pressed
          Scaffold.of(context).openDrawer();
        },
      ),
      title: const Text('My Icon',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          )),
      actions: [
        // Display resize buttons only if allowResize is true
        if (allowResize) ...[
          IconButton(
            onPressed: () => onDecrease(),
            icon: const Icon(
              Icons
                  .remove_circle_outline, // Icon for remove with circle outline
              color: Colors.white, // Icon color
            ),
          ),
          TextButton(
            onPressed: () => smallSize(),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Circle shape
                border: Border.all(
                  color: Colors.white,
                  width: 2.0, // Border width
                ),
              ),
              padding: const EdgeInsets.all(
                  5.0), // Padding inside the circle to ensure text doesn't touch the border
              child: const Text(
                'S', // The text shown on the button
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0, // Font size
                  fontWeight: FontWeight.bold, // Font weight
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () => mediumSize(),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Circle shape
                border: Border.all(
                  color: Colors.white,
                  width: 2.0, // Border width
                ),
              ),
              padding: const EdgeInsets.all(
                  5.0), // Padding inside the circle to ensure text doesn't touch the border
              child: const Text(
                'M', // The text shown on the button
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0, // Font size
                  fontWeight: FontWeight.bold, // Font weight
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () => largeSize(),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Circle shape
                border: Border.all(
                  color: Colors.white,
                  width: 2.0, // Border width
                ),
              ),
              padding: const EdgeInsets.all(
                  5.0), // Padding inside the circle to ensure text doesn't touch the border
              child: const Text(
                'L', // The text shown on the button
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0, // Font size
                  fontWeight: FontWeight.bold, // Font weight
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () =>
                onIncrease(), // Define what happens when the button is pressed
            icon: const Icon(
              Icons.add_circle_outline, // Icon for remove with circle outline
              color: Colors.white,
            ),
          ),
        ]
      ],
    );
  }
}
