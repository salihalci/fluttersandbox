import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //local variable a otomatik olarak map oluyor. text=text
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.yellow,
        fontSize: 24,
      ),
    );
  }
}
