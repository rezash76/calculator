import 'package:flutter/material.dart';

class MyBottons extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;

  MyBottons({this.color, this.textColor, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(child: Text(buttonText, style: TextStyle(color: textColor)),),
    );
  }
}
