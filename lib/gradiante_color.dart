import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

class GradientColor extends StatelessWidget {
   const GradientColor(
    this.color1,
    this.color2, {
    super.key,
  }); /*Here I used positional arguments for the colors there is an alternate 
  We can used named arguments using list which will allow user to have list of colors which is more than 2*/
  final Color color1;
  final Color color2;

  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}


/* alternate is 
const GradientColor({super.key, List<Colors> colors});
*/