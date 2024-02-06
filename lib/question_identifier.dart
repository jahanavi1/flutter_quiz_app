import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key,
      required this.questionIndex,
      required this.isCorrectAnswer,
 });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    final questionNumber = questionIndex+1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 2410)
            : const Color.fromARGB(255, 173, 29, 29),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(questionNumber.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 22, 2, 56)
      ),),
    );
  }
}
