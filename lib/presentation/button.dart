import 'package:calculator/presentation/button_type.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final ButtonType type;

  const MyButton({
    super.key,
    required this.buttonText,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (type) {
      case ButtonType.number:
        color = const Color.fromARGB(255, 124, 88, 129);
        break;
      case ButtonType.operation:
        color = const Color.fromARGB(255, 233, 157, 40);
        break;
      default:
        color = const Color.fromARGB(255, 98, 56, 105);
    }
    return Container(
      color: color,
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
