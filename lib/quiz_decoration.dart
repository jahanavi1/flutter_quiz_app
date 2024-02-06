import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionDecoration extends StatelessWidget {
  const QuestionDecoration(
      {super.key,
      required this.answerText,
      required this.foSize,
      required this.type,
      required this.colors,
      required this.align});

  final String answerText;
  final double foSize;
  final FontWeight type;
  final Color colors;
  final TextAlign align;

  @override
  Widget build(context) {
    return Text(answerText,
        style: GoogleFonts.lato(
            color: colors, fontSize: foSize, fontWeight: type),
    textAlign: align,);
  }
}
