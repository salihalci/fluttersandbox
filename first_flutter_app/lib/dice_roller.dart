import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  //constructer manual added.
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      //Önemli! refresh edilmesi için gerekiyor. build fonksiyonunu tekrar çağırıyor.

      var randNumber = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text('Roll Dice',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )),
        )
      ],
    );
  }
}
