import 'package:flutter/material.dart';

class StylesText extends StatelessWidget {
  const StylesText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Color.fromARGB(255, 217, 216, 209),
      ),
    );
  }
}
