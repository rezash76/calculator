import 'package:flutter/material.dart';

class CalcScreen extends StatelessWidget {
  const CalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body:Column(
        children: [
          Expanded(
            child: Container(color: const Color.fromARGB(255, 28, 28, 38),)
            ),
          Expanded(
            flex:2,
            child: Container(color: const Color.fromARGB(255, 86, 84, 93)),
            ),
        ],
      )
    );
  }
}
