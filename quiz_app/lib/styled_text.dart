import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylesText extends StatelessWidget {
  const StylesText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 201, 153, 251),
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
