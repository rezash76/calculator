import 'package:calculator/presentation/bottons.dart';
import 'package:flutter/material.dart';

class CalcScreen extends StatelessWidget {
  CalcScreen({super.key});

  final List<String> buttons = 
  [
    'AC','+/-', '%', '÷' ,
    '7' , '8' , '9', 'x' ,
    '4' , '5' , '6', '-' ,
    '1' , '2' , '3', '+' ,
    '0' , '.' , '=' ,
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: const Color.fromARGB(255, 28, 28, 38),
          )),
          Expanded(
            flex: 2,
            child: Container(
              child:  GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index){
                  return MyBottons( 
                    buttonText: buttons[index],
                    color: Color.fromARGB(255, 83, 83, 92),
                    textColor: Colors.white,
                    );
                  }),
            ),
          ),
        ],
      ), 
    );
  }
}
