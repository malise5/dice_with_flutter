import 'dart:math';

import 'package:flutter/material.dart';
import 'package:leanflutter/theme/style_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  // State<DiceRoller> createState() => _DiceRollerState();
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = Random().nextInt(6) + 1;

   void rollDice(){
    // TODO: Implement dice rolling functionality
    setState((){
       activeDiceImage = Random().nextInt(6) + 1;  // Randomly select a number between 1 and 6
       // Update the state to reflect the new image asset
       // setState(() {}); // This line is not needed when using setState with a function parameter
    });
    // You can use Dart's Random class to generate random numbers
    // and then set the image asset based on the generated number
    // Image.asset('assets/images/dice-${Random().nextInt(6) + 1}.png');
    

    

  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$activeDiceImage.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              // style: TextButton.styleFrom(
              //   padding: EdgeInsets.only(top: 20)
              // ),
              child: const StyledText("Roll Dice"),
            )
          ],
        );
  }
}