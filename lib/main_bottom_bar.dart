import 'package:flutter/material.dart';

class MainBottomBar extends StatelessWidget {
  final double redSliderValue;
  final double greenSliderValue;
  final double blueSliderValue;
  final ValueChanged<double> onRedSliderChanged;
  final ValueChanged<double> onGreenSliderChanged;
  final ValueChanged<double> onBlueSliderChanged;
  final bool allowChangeColor;

  MainBottomBar({
    required this.redSliderValue,
    required this.greenSliderValue,
    required this.blueSliderValue,
    required this.onRedSliderChanged,
    required this.onGreenSliderChanged,
    required this.onBlueSliderChanged,
    required this.allowChangeColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: Column(children: [
        //Red Slider and Button/Text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (allowChangeColor) ...[
              Expanded(
                child: Slider(
                  value: redSliderValue,
                  min: 0,
                  max: 255,
                  onChanged: onRedSliderChanged,
                  activeColor: Colors.brown,
                  inactiveColor: Colors.brown.withOpacity(0.3),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                shape: const CircleBorder(),
                onPressed: () => onRedSliderChanged(255),
                child: Text(
                  redSliderValue.toStringAsFixed(0),
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ] else ...[
              Text('Value for R(Red): ${redSliderValue.toStringAsFixed(0)}',
                  style: const TextStyle(fontSize: 20, color: Colors.red)),
            ]
          ],
        ),
        //Green Slider and Button/Text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (allowChangeColor) ...[
              Expanded(
                child: Slider(
                  value: greenSliderValue,
                  min: 0,
                  max: 255,
                  onChanged: onGreenSliderChanged,
                  activeColor: Colors.brown,
                  inactiveColor: Colors.brown.withOpacity(0.3),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.green,
                shape: const CircleBorder(),
                onPressed: () => onGreenSliderChanged(255),
                child: Text(
                  greenSliderValue.toStringAsFixed(0),
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ] else ...[
              Text('Value for G(Green): ${greenSliderValue.toStringAsFixed(0)}',
                  style: const TextStyle(fontSize: 20, color: Colors.green)),
            ]
          ],
        ),
        //Blue Slider and Button/Text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (allowChangeColor) ...[
              Expanded(
                child: Slider(
                  value: blueSliderValue,
                  min: 0,
                  max: 255,
                  onChanged: onBlueSliderChanged,
                  activeColor: Colors.brown,
                  inactiveColor: Colors.brown.withOpacity(0.3),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: const CircleBorder(),
                onPressed: () => onBlueSliderChanged(255),
                child: Text(
                  blueSliderValue.toStringAsFixed(0),
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ] else ...[
              Text('Value for B(Blue): ${blueSliderValue.toStringAsFixed(0)}',
                  style: const TextStyle(fontSize: 20, color: Colors.blue)),
            ]
          ],
        ),
      ]),
    );
  }
}
