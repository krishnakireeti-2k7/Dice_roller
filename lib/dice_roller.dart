import 'dart:math';
import 'package:flutter/material.dart';

final randomrizer = Random();//Random is used here because it efficent for memory

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var diceNumber = 1;

  void rolldice() {
    setState(() {/* setstate anonymous function because of this flutter will rexecute the build() changing the image*/

    diceNumber = randomrizer.nextInt(6)+1; 
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceNumber.png', width: 300),
        SizedBox(
          height: 35,
        ), //this widget is used to create space between the Dice and Button
        ElevatedButton(
          onPressed: rolldice,
          child: Text('Roll Dice'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
            /*using symmetric you
            can manually increase the height and width of the Button*/
            backgroundColor: Color.fromARGB(255, 189, 227, 234),
            foregroundColor: Colors.black,
            textStyle: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
