import 'package:calculator/presentation/button.dart';
import 'package:calculator/presentation/button_type.dart';
import 'package:flutter/material.dart';

class CalcScreen extends StatelessWidget {
  CalcScreen({super.key});

  final Map<String, ButtonType> buttons = {
    'AC': ButtonType.other,
    '+/-': ButtonType.other,
    '%': ButtonType.other,
    '÷': ButtonType.operation,
    '7': ButtonType.number,
    '8': ButtonType.number,
    '9': ButtonType.number,
    'x': ButtonType.operation,
    '4': ButtonType.number,
    '5': ButtonType.number,
    '6': ButtonType.number,
    '-': ButtonType.operation,
    '1': ButtonType.number,
    '2': ButtonType.number,
    '3': ButtonType.number,
    '+': ButtonType.operation,
    '0': ButtonType.number,
    '.': ButtonType.number,
    '=': ButtonType.operation,
  };

  @override
  Widget build(BuildContext context) {
    var keys = buttons.keys.map((e) => e).toList();
    var values = buttons.values.map((e) => e).toList();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 28, 28, 38),
          )),
          Expanded(
            flex: 2,
            child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return MyButton(
                    buttonText: keys[index],
                    type: values[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
