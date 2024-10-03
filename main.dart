import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Dice(),
    )
  );
}




class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_number = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Dice'),
        backgroundColor:  Colors.blue,

      ),
      backgroundColor:    Colors.purple,
      body: Center(
        child: Row(
          children: [
          Expanded(child: FloatingActionButton(
            onPressed:(){
              setState(() {
                dice_number = Random().nextInt(6) + 1;
                debugPrint('dice_number');
              });
            },
            child: Image.asset('images/inverted-dice-$dice_number.png',height: 500,),
            )
          )
        ],
        ),
      ),
    );
  }
}


